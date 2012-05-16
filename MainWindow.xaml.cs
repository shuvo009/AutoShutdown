using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.ComponentModel;
using System.Diagnostics;
namespace AutoShutdown
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window,INotifyPropertyChanged
    {
        DispatcherTimer autoShutDownTimer = new DispatcherTimer();
        TimeSpan decrementTime = new TimeSpan();
        private bool _IsRunning = false;

        public bool IsRunning
        {
            get { return this._IsRunning; }
            set 
            {
                if (this._IsRunning!=value)
                {
                    this._IsRunning = value;
                    if (this.PropertyChanged!=null)
                    {
                        this.PropertyChanged(this, new PropertyChangedEventArgs("IsRunning"));
                    }
                }
            }
        }

        public ICommand StartButtonCommand
        {
            get { return new ReplayCommand(new Action<object>(startButtonCommandEx)); }
        }
        public ICommand StopButtonCommand
        {
            get { return new ReplayCommand(new Action<object>(stopButtonCommandEx)); }
        }

        public MainWindow()
        {
            InitializeComponent();
            this.autoShutDownTimer.Tick += new EventHandler(autoShutDownTimer_Tick);
            this.autoShutDownTimer.Interval = new TimeSpan(0, 0, 1);
        }

        void autoShutDownTimer_Tick(object sender, EventArgs e)
        {
            this.decrementTime = this.decrementTime + new TimeSpan(0, 0, -1);
            this.textBlockTimeLeft.Text = this.decrementTime.ToString();
            if ((this.decrementTime.CompareTo(new TimeSpan(0,0,0))<=0))
            {
                this.stopButtonCommandEx(null);
                Process.Start("shutdown","/s /t 0"); 
            }
        }

        private void startButtonCommandEx(object obj)
        {
            try
            {
                this.decrementTime = (obj as ModelTime).Time;
                this.autoShutDownTimer.Start();
                this.IsRunning = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "AutoShutdown", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void stopButtonCommandEx(object obj)
        {
            try
            {
                this.autoShutDownTimer.Stop();
                this.IsRunning = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "AutoShutdown", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected class ReplayCommand : ICommand
        {
            private Action<object> _action;

            public ReplayCommand(Action<object> action)
            {
                this._action = action;
            }
            public bool CanExecute(object parameter)
            {
                return true;
            }

            public event EventHandler CanExecuteChanged;


            public void Execute(object parameter)
            {
                try
                {
                    if (parameter!=null)
                    {
                        this._action(parameter);
                    }
                    else
                    {
                        MessageBox.Show("Please Select a Time", "AutoShutdown", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                catch (Exception ex)
                {

                    MessageBox.Show(ex.Message, "AutoShutdown", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
