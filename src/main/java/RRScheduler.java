import java.util.LinkedList;
import java.util.Queue;

/**
 * Round Robin Scheduler
 * 
 */
public class RRScheduler extends AbstractScheduler {

  Queue<Process> readyQueue;

  public RRScheduler()
  {
    readyQueue = new LinkedList<>();
  }

  /**
   * Adds a process to the ready queue.
   * usedFullTimeQuantum is true if process is being moved to ready
   * after having fully used its time quantum.
   */
  public void ready(Process process, boolean usedFullTimeQuantum)
  {
    readyQueue.offer(process);
  }

  /**
   * Removes the next process to be run from the ready queue 
   * and returns it. 
   * Returns null if there is no process to run.
   */
  public Process schedule()
  {
    Process currProcess = readyQueue.poll();
    System.out.println("Selected Process" + currProcess);
    return currProcess;
  }

  @Override
  public int getTimeQuantum()
  {
    //Scheduler uses time quantum
    return Integer.parseInt(parameters.get("timeQuantum").toString());
  }
}
