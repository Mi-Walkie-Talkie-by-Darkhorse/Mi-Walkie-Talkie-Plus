package com.xiaomi.infra.galaxy.fds.model;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
/* loaded from: classes2.dex */
public class ClientMetrics {
    private List<MetricData> metrics = new ArrayList();

    /* loaded from: classes2.dex */
    public enum LatencyMetricType {
        ExecutionTime
    }

    public void add(MetricData metricData) {
        this.metrics.add(metricData);
    }

    public List<MetricData> getMetrics() {
        return this.metrics;
    }

    public void setMetrics(List<MetricData> list) {
        this.metrics = list;
    }
}
