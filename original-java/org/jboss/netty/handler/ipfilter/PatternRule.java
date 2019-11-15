package org.jboss.netty.handler.ipfilter;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.regex.Pattern;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.StringUtil;

public class PatternRule implements Comparable<Object>, IpFilterRule {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(PatternRule.class);
    private Pattern ipPattern;
    private boolean isAllowRule = true;
    private boolean localhost;
    private Pattern namePattern;
    private final String pattern;

    public PatternRule(boolean z, String str) {
        this.isAllowRule = z;
        this.pattern = str;
        parse(str);
    }

    public String getPattern() {
        return this.pattern;
    }

    public boolean isAllowRule() {
        return this.isAllowRule;
    }

    public boolean isDenyRule() {
        return !this.isAllowRule;
    }

    public boolean contains(InetAddress inetAddress) {
        if (this.localhost && isLocalhost(inetAddress)) {
            return true;
        }
        if (this.ipPattern != null && this.ipPattern.matcher(inetAddress.getHostAddress()).matches()) {
            return true;
        }
        if (this.namePattern == null || !this.namePattern.matcher(inetAddress.getHostName()).matches()) {
            return false;
        }
        return true;
    }

    private void parse(String str) {
        if (str != null) {
            String str2 = "";
            String str3 = "";
            for (String trim : StringUtil.split(str, ',')) {
                String trim2 = trim.trim();
                if ("n:localhost".equals(trim2)) {
                    this.localhost = true;
                } else if (trim2.startsWith("n:")) {
                    str2 = addRule(str2, trim2.substring(2));
                } else if (trim2.startsWith("i:")) {
                    str3 = addRule(str3, trim2.substring(2));
                }
            }
            if (str3.length() != 0) {
                this.ipPattern = Pattern.compile(str3);
            }
            if (str2.length() != 0) {
                this.namePattern = Pattern.compile(str2);
            }
        }
    }

    private static String addRule(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return str;
        }
        if (str.length() != 0) {
            str = str + "|";
        }
        return str + '(' + str2.replaceAll("\\.", "\\\\.").replaceAll("\\*", ".*").replaceAll("\\?", ".") + ')';
    }

    private static boolean isLocalhost(InetAddress inetAddress) {
        try {
            if (inetAddress.equals(InetAddress.getLocalHost())) {
                return true;
            }
        } catch (UnknownHostException e) {
            if (logger.isInfoEnabled()) {
                logger.info("error getting ip of localhost", e);
            }
        }
        try {
            for (InetAddress equals : InetAddress.getAllByName("127.0.0.1")) {
                if (equals.equals(inetAddress)) {
                    return true;
                }
            }
        } catch (UnknownHostException e2) {
            if (logger.isInfoEnabled()) {
                logger.info("error getting ip of localhost", e2);
            }
        }
        return false;
    }

    public int compareTo(Object obj) {
        if (obj == null || !(obj instanceof PatternRule)) {
            return -1;
        }
        PatternRule patternRule = (PatternRule) obj;
        if (patternRule.isAllowRule() && !this.isAllowRule) {
            return -1;
        }
        if (this.pattern == null && patternRule.pattern == null) {
            return 0;
        }
        if (this.pattern != null) {
            return this.pattern.compareTo(patternRule.getPattern());
        }
        return -1;
    }
}
