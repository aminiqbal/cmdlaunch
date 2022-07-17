// package cmdlaunch;

import java.io.IOException;

// AM1N

// Runtime.exec(...) deprecated as of Java 18. Proceed with ProcessBuilder(...).
public class CmdLaunch
{
	public static void main(String args[])
	{
		String path;
		String winpath = System.getenv("windir");
		String cmdpath = winpath + "\\System32\\cmd.exe";
		final String adminLaunch = "ADMIN";
		int admin = 0;
		ProcessBuilder processBuilder = null;
		if(args.length > 0)
		{
			path = args[0];
			if(path.equals(adminLaunch))
			{
				path = args[1];
				admin = 1;
			}

			if(admin == 1)
			{
				String pshellPath = winpath + "\\System32\\WindowsPowerShell\\v1.0\\powershell.exe";
				String pshellCmd = " start-process -v runas " + "-filepath " + cmdpath + " -argumentlist " + "'/c','start','cd','/d','" + path + "'";
				processBuilder = new ProcessBuilder(pshellPath, "\"" + pshellCmd + "\"");
			}
		}
		else
		{
			path = System.getProperty("user.home");
		}
		if(admin == 0)
		{
			processBuilder = new ProcessBuilder(cmdpath, "/c", "start", "cd", "/d", path);
		}
		try
		{
			processBuilder.start();
		}
		catch(IOException e)
		{
			e.printStackTrace();
		}
	}
}
