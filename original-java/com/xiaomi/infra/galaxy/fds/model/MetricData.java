package com.xiaomi.infra.galaxy.fds.model;

/* loaded from: classes2.dex */
public class MetricData {
    private String metricName;
    private MetricType metricType;
    private long timestamp;
    private long value;

    /* loaded from: classes2.dex */
    public enum MetricType {
        Latency,
        Throughput,
        Counter
    }

    public MetricData() {
    }

    public String getMetricName() {
        return this.metricName;
    }

    public MetricType getMetricType() {
        return this.metricType;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public long getValue() {
        return this.value;
    }

    public void setMetricName(String str) {
        this.metricName = str;
    }

    public void setMetricType(MetricType metricType) {
        this.metricType = metricType;
    }

    public void setTimestamp(long j) {
        this.timestamp = j;
    }

    public void setValue(long j) {
        this.value = j;
    }

    public MetricData withMetricName(String str) {
        this.metricName = str;
        return this;
    }

    public MetricData withMetricType(MetricType metricType) {
        this.metricType = metricType;
        return this;
    }

    public MetricData withTimeStamp(long j) {
        this.timestamp = j;
        return this;
    }

    public MetricData withValue(long j) {
        this.value = j;
        return this;
    }

    public MetricData(MetricType metricType, String str, long j, long j2) {
        this.metricType = metricType;
        this.metricName = str;
        this.value = j;
        this.timestamp = j2;
    }
}
