#HighPerformanceTimer based on Kernel32.dll.

Sample code to test  

> // create a new PerfTimer object  
> HiPerfTimer pt = new HiPerfTimer();                      
> // start the timer    
> pt.Start();  
> // the code to be timed                                                
> Console.WriteLine("Test\n");                              
> // stop the timer  
> pt.Stop();  
> // print the duration of the timed code                                                 
> Console.WriteLine("Duration: {0} sec\n", pt.Duration);   
