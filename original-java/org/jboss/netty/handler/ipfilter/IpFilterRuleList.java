package org.jboss.netty.handler.ipfilter;

import java.net.UnknownHostException;
import java.util.ArrayList;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.StringUtil;

public class IpFilterRuleList extends ArrayList<IpFilterRule> {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(IpFilterRuleList.class);
    private static final long serialVersionUID = -6164162941749588780L;

    public IpFilterRuleList(String str) {
        parseRules(str);
    }

    private void parseRules(String str) {
        for (String trim : StringUtil.split(str, ',')) {
            parseRule(trim.trim());
        }
    }

    private void parseRule(String str) {
        if (str != null && str.length() != 0) {
            if (str.startsWith("+") || str.startsWith("-")) {
                boolean startsWith = str.startsWith("+");
                if (str.charAt(1) == 'n' || str.charAt(1) == 'i') {
                    add(new PatternRule(startsWith, str.substring(1)));
                } else if (str.charAt(1) == 'c') {
                    try {
                        add(new IpSubnetFilterRule(startsWith, str.substring(3)));
                    } catch (UnknownHostException e) {
                        if (logger.isErrorEnabled()) {
                            logger.error("error parsing ip filter " + str, e);
                        }
                    }
                } else if (logger.isErrorEnabled()) {
                    logger.error("syntax error in ip filter rule:" + str);
                }
            } else if (logger.isErrorEnabled()) {
                logger.error("syntax error in ip filter rule:" + str);
            }
        }
    }
}
