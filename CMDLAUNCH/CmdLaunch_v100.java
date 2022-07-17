// package cmdlaunch;

import java.io.File;
import java.io.IOException;

// AM1N
public class CmdLaunch
{
	private static String path;

	public static void main(String args[])
	{
		if(args.length > 0)
		{
			path = args[0];
		}
		else
		{
			path = System.getProperty("user.home");
		}

		try
		{
			Runtime.getRuntime().exec("cmd.exe /c start", null, new File(path));
		}
		catch(IOException e)
		{
			// e.printStackTrace();
		}
	}
}
