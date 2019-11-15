package rx.exceptions;

public class OnErrorNotImplementedException extends RuntimeException {
    private static final long serialVersionUID = -6298857009889503852L;

    public OnErrorNotImplementedException(Throwable th) {
        String str = th != null ? th.getMessage() : null;
        if (th == null) {
            th = new NullPointerException();
        }
        super(str, th);
    }
}
