import java.util.ArrayList;

/**
 * Ideal Shortest Job First Scheduler
 * 
 */
public class IdealSJFScheduler extends AbstractScheduler {

  private final ArrayList<Process> readyQueue;

  public  IdealSJFScheduler()
  {
    readyQueue = new ArrayList<>();
  }
  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  public void ready(Process process, boolean usedFullTimeQuantum)
  {
    readyQueue.add(process);
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule()
  {
    //Initialise the shortestBurst process
    Process shortestBurst = null;

    //Loop through all processes in the readyQueue and use getNextBurst() to find the shortest burst
    for (Process process : readyQueue)
    {
      //Base Case
      if (shortestBurst == null) shortestBurst = process;

      //compares current process.getNextBurst() with shortestBurst.getNextBurst()
      //If shorter, current process becomes new shortestBurst process
      else if (process.getNextBurst() < shortestBurst.getNextBurst())
      {
        shortestBurst = process;
      }
    }

    //If shortestBurst is not null (ReadyQueue is not null)
    if (shortestBurst != null)
    {
      //Remove said process from readyQueue
      readyQueue.remove(shortestBurst);

      //Prints out select process, alongside next burst
      System.out.println("Selected process: " + shortestBurst + " --- Next Burst Value: " + shortestBurst.getNextBurst());

      //Loop through remaining processes in readyQueue
      for (Process process : readyQueue)
      {
        //Prints out the not selected processes, alongside their burst, for testing
        System.out.println("Not Chosen Process: " + process + " --- Next Burst Value: " + process.getNextBurst());
      }

      //Separator to make ready data easier
      System.out.println("============================");
    }
    return shortestBurst;
  }
}
