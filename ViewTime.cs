using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
namespace AutoShutdown
{
    public class ViewTime : ObservableCollection<ModelTime>
    {
        public ViewTime()
        { 
            this.Add(new ModelTime{Name="30 Sec",Time= new TimeSpan(0,0,30)});
            this.Add(new ModelTime { Name = "1 Minute", Time = new TimeSpan(0, 1, 0) });
            this.Add(new ModelTime { Name = "10 Minute", Time = new TimeSpan(0, 10, 0 ) });
            this.Add(new ModelTime { Name = "15 Minute", Time = new TimeSpan(0, 15, 0) });
            this.Add(new ModelTime { Name = "30 Minute", Time = new TimeSpan(0, 30, 0) });
            this.Add(new ModelTime { Name = "45 Minute", Time = new TimeSpan(0, 45, 0) });
            this.Add(new ModelTime { Name = "1 Hour", Time = new TimeSpan(1, 0, 0) });
            this.Add(new ModelTime { Name = "1 Hour 30 Minute", Time = new TimeSpan(1, 30, 0) });
            this.Add(new ModelTime { Name = "2 Hour", Time = new TimeSpan(2, 0, 0) });
            this.Add(new ModelTime { Name = "2 Hour 30 Minute", Time = new TimeSpan(2, 30, 0) });
            this.Add(new ModelTime { Name = "3 Hour", Time = new TimeSpan(3, 0, 0) });
            this.Add(new ModelTime { Name = "4 Hour", Time = new TimeSpan(4, 0, 0) });
            this.Add(new ModelTime { Name = "5 Hour", Time = new TimeSpan(5, 0, 0) });
            this.Add(new ModelTime { Name = "6 Hour", Time = new TimeSpan(6, 0, 0) });
            this.Add(new ModelTime { Name = "7 Hour", Time = new TimeSpan(7, 0, 0) });
            this.Add(new ModelTime { Name = "8 Hour", Time = new TimeSpan(8, 0, 0) });
            this.Add(new ModelTime { Name = "9 Hour", Time = new TimeSpan(9, 0, 0) });
            this.Add(new ModelTime { Name = "10 Hour", Time = new TimeSpan(10, 0, 0) });
        }
    }
}
