using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AutoShutdown
{
    public class ModelTime
    {
        private string _Name;
        private TimeSpan _Time;

        public string Name
        {
            get { return this._Name; }
            set
            {
                if (this._Name != value)
                {
                    this._Name = value;
                }
            }
        }

        public TimeSpan Time
        {
            get { return this._Time; }
            set
            {
                if (this._Time != value)
                {
                    this._Time = value;
                }
            }
        }
    }
}
