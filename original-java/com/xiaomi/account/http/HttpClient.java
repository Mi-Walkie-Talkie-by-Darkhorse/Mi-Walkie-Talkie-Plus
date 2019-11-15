package com.xiaomi.account.http;

import java.io.IOException;

public interface HttpClient {
    Response excute(Request request) throws IOException;
}
