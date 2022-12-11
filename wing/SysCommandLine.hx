package wing;
import haxe.ds.ReadOnlyArray;

/**
 * If there is only one cmd, set `args' to null.  
 *
 * MEMO:
 * - If you set `Sys.command` or `new Process` args to null, it will call cmd.exe and the behavior will change.
 * - Class for the way to work with haxe's Sys.command and Process classes.
 * - For normal use, I don't want to be aware of the need to set args to null, so I prepared this class.
 */
class SysCommandLine {
	public final cmd:String;
	public final args:Null<Array<String>>;
	public function new(cmds:ReadOnlyArray<String>) {
		cmd = cmds[0].or("");
		args = if (cmds.length > 1) {
			cmds.slice(1);
		} else {
			null;
		}
	}
}
