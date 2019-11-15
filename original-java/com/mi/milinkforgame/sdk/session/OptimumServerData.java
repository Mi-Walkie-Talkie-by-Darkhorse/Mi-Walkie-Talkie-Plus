package com.mi.milinkforgame.sdk.session;

import com.mi.milinkforgame.sdk.util.CommonUtils;
import java.io.Serializable;
import java.util.List;

public class OptimumServerData extends ServerData implements Serializable {
    private static final long serialVersionUID = -8399070197793626196L;
    private List<ServerProfile> mOptimumServers = null;

    public void setOptimumServers(List<ServerProfile> list) {
        this.mOptimumServers = list;
    }

    public List<ServerProfile> getOptimumServers() {
        return this.mOptimumServers;
    }

    public String toString() {
        return "[optimum servers = " + CommonUtils.join(this.mOptimumServers, ";") + ",timeStamp = " + getTimeStamp() + "]";
    }
}
