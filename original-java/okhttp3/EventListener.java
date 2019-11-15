package okhttp3;

import java.net.InetAddress;
import java.util.List;

abstract class EventListener {
    public static final EventListener NONE = new EventListener() {
    };

    public interface Factory {
        EventListener create(Call call);
    }

    EventListener() {
    }

    static Factory factory(EventListener eventListener) {
        return new Factory() {
            public EventListener create(Call call) {
                return EventListener.this;
            }
        };
    }

    public void fetchStart(Call call) {
    }

    public void dnsStart(Call call, String str) {
    }

    public void dnsEnd(Call call, String str, List<InetAddress> list, Throwable th) {
    }

    public void connectStart(Call call, InetAddress inetAddress, int i) {
    }

    public void secureConnectStart(Call call) {
    }

    public void secureConnectEnd(Call call, Handshake handshake, Throwable th) {
    }

    public void connectEnd(Call call, InetAddress inetAddress, int i, String str, Throwable th) {
    }

    public void requestHeadersStart(Call call) {
    }

    public void requestHeadersEnd(Call call, Throwable th) {
    }

    public void requestBodyStart(Call call) {
    }

    public void requestBodyEnd(Call call, Throwable th) {
    }

    public void responseHeadersStart(Call call) {
    }

    public void responseHeadersEnd(Call call, Throwable th) {
    }

    public void responseBodyStart(Call call) {
    }

    public void responseBodyEnd(Call call, Throwable th) {
    }

    public void fetchEnd(Call call, Throwable th) {
    }
}
