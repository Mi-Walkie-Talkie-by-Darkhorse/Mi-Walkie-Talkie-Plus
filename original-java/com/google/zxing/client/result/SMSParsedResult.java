package com.google.zxing.client.result;

public final class SMSParsedResult extends ParsedResult {
    private final String body;
    private final String[] numbers;
    private final String subject;
    private final String[] vias;

    public SMSParsedResult(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.numbers = new String[]{str};
        this.vias = new String[]{str2};
        this.subject = str3;
        this.body = str4;
    }

    public SMSParsedResult(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.numbers = strArr;
        this.vias = strArr2;
        this.subject = str;
        this.body = str2;
    }

    public String getSMSURI() {
        boolean z = true;
        StringBuilder sb = new StringBuilder();
        sb.append("sms:");
        boolean z2 = true;
        for (int i = 0; i < this.numbers.length; i++) {
            if (z2) {
                z2 = false;
            } else {
                sb.append(',');
            }
            sb.append(this.numbers[i]);
            if (!(this.vias == null || this.vias[i] == null)) {
                sb.append(";via=");
                sb.append(this.vias[i]);
            }
        }
        boolean z3 = this.body != null;
        if (this.subject == null) {
            z = false;
        }
        if (z3 || z) {
            sb.append('?');
            if (z3) {
                sb.append("body=");
                sb.append(this.body);
            }
            if (z) {
                if (z3) {
                    sb.append('&');
                }
                sb.append("subject=");
                sb.append(this.subject);
            }
        }
        return sb.toString();
    }

    public String[] getNumbers() {
        return this.numbers;
    }

    public String[] getVias() {
        return this.vias;
    }

    public String getSubject() {
        return this.subject;
    }

    public String getBody() {
        return this.body;
    }

    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        maybeAppend(this.numbers, sb);
        maybeAppend(this.subject, sb);
        maybeAppend(this.body, sb);
        return sb.toString();
    }
}
