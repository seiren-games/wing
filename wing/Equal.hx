package wing;
import deepequal.DeepEqual;

class Equal {
	public static inline function equals<T>(a:T, b:T):Bool {
		return DeepEqual.compare(a, b).isSuccess();
	}
}
