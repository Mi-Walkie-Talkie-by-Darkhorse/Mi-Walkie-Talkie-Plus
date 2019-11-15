package rx.exceptions;

public class OnErrorFailedException extends RuntimeException {
    private static final long serialVersionUID = -419289748403337611L;

    public OnErrorFailedException(String str, Throwable th) {
        if (th == null) {
            th = new NullPointerException();
        }
        super(str, th);
    }

    public OnErrorFailedException(Throwable th) {
        String str = th != null ? th.getMessage() : null;
        if (th == null) {
            th = new NullPointerException();
        }
        super(str, th);
    }
}
