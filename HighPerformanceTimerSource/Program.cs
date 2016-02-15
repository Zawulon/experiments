using System;
using Win32;

namespace HighPerformanceTimer
{
	class Program
	{
		[STAThread]
		static void Main(string[] args)
		{
            HiPerfTimer pt = new HiPerfTimer();                    // create a new PerfTimer object
            pt.Start();                                            // start the timer
            Console.WriteLine("Test\n");                           // the code to be timed
            pt.Stop();                                             // stop the timer
            Console.WriteLine("Duration: {0} sec\n", pt.Duration); // print the duration of the timed code

            Console.ReadLine();
		}
	}
}
