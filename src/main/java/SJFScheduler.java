import java.util.ArrayList;
import java.util.HashMap;

/**
 * Shortest Job First Scheduler
 * 
 * @version 2017
 */
public class SJFScheduler extends AbstractScheduler
{
  ArrayList<Process> readyQueue;
  public SJFScheduler()
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
    //HashMap used to connect all the current processes with all their respective predictedBurstValues
    //It Calls getPredictedValue()
    HashMap<Process,Float> predictedValue = getPredictedValue();

    //Initialising the shortestBurst (AKA the process to be returned)
    Process shortestBurst = null;

    //Looping Through the processes in the predictedValue Hashmap to find the process
    //With the shorted burst time
    for (Process process : predictedValue.keySet())
    {
      //Base Case
      if (shortestBurst == null) shortestBurst = process;

      //if current process predicted value is less than shortestBurst,
      //then current process becomes new shortestBurst process
      else if (predictedValue.get(process) < predictedValue.get(shortestBurst))
      {
        shortestBurst = process;
      }
    }

    //If shortestBurst has been replaced (from null), said process is removed from readyQueue.
    if (shortestBurst != null) readyQueue.remove(shortestBurst);

    //Printing chosen shortestBurst Process
    System.out.println("Selected process: " + shortestBurst + " --- Predicted Value: " + predictedValue.get(shortestBurst));

    for(Process process : readyQueue)
    {
      //Printing not chose processes to see if the code works
      System.out.println("Not Chosen Process: " + process + " --- Predicted Value: " + predictedValue.get(process));
    }

    //Separator to clarify data
    System.out.println("============================");
    return shortestBurst;
  }

  /**
   * Get the predicted values, and create a HashMap of Process and its predicted value
   *
   * @return HashMap with the processes and their respective shortest predicted Burst
   */
  public HashMap<Process, Float> getPredictedValue()
  {
    HashMap<Process,Float> predictedValuesHash = new HashMap<>();
    //Initialising predictedValue float
    float predictedValue;

    //Getting values from the parameters
    long initialBurst = Integer.parseInt(parameters.get("initialBurstEstimate").toString());
    float alphaBurst = Float.parseFloat(parameters.get("alphaBurstEstimate").toString());

    //Loop through readyQueue and get predicted value Burst for all processes
    for (Process process : readyQueue)
    {
      //Base case (AKA no previous burst) uses initialBurst value from parameters
      if (process.getRecentBurst() == -1)
      {
        predictedValue = alphaBurst*initialBurst+((1 - alphaBurst)*initialBurst);
      }

      //Get predicted value and insert process, alongside said value, into the hashmap
      else predictedValue = alphaBurst*process.getRecentBurst() + (1 - alphaBurst) * process.getRecentBurst();
      predictedValuesHash.put(process,predictedValue);
    }
    return predictedValuesHash;
  }
}
