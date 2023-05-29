import java.util.PriorityQueue;

/**
 * Feedback Round Robin Scheduler
 * 
 * @version 2017
 */
public class FeedbackRRScheduler extends AbstractScheduler {

  private final PriorityQueue<Process> readyQueue;

  public FeedbackRRScheduler()
  {
    readyQueue = new PriorityQueue<>();
  }

  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  public void ready(Process process, boolean usedFullTimeQuantum)
  {
    //If process uses the full time quantum, then its priority gets penalised (Increases by one)
    if (usedFullTimeQuantum)
    {
      process.setPriority(process.getPriority() + 1);
    }

    //Add process to readyQueue
    readyQueue.add(process);
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule()
  {
    Process chosenProcess = readyQueue.poll();

    //Prints out select process, alongside its priority
    if (chosenProcess != null) System.out.println("Selected process:  " + chosenProcess + " --- Priority Value: " + chosenProcess.priority);

    //Loop through remaining processes in readyQueue
    for (Process process : readyQueue)
    {
      //Prints out the not selected processes, alongside their burst, for testing
      System.out.println("Remaining Process: " + process + " --- Priority Value: " + process.priority);
    }
    System.out.println("=============================");
    return chosenProcess;
  }

  @Override
  public boolean isPreemptive()
  {
    //Scheduler is preemptive
    return true;
  }

  @Override
  public int getTimeQuantum()
  {
    //Scheduler uses time quantum
    return Integer.parseInt(parameters.get("timeQuantum").toString());
  }
}
