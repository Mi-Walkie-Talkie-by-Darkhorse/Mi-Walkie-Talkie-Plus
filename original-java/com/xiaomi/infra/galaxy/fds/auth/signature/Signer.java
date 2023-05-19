package com.xiaomi.infra.galaxy.fds.auth.signature;

import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.LinkedListMultimap;
import com.huawei.hms.framework.common.ContainerUtils;
import com.xiaomi.infra.galaxy.fds.Common;
import com.xiaomi.infra.galaxy.fds.SubResource;
import com.xiaomi.infra.galaxy.fds.exception.GalaxyFDSException;
import com.xiaomi.infra.galaxy.fds.model.HttpMethod;
import com.xiaomi.mipush.sdk.Constants;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.lang.C6718a;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes2.dex */
public class Signer {
    private static final Log LOG = LogFactory.getLog(Signer.class);
    private static final Set<String> SUB_RESOURCE_SET = new HashSet();
    private static final String XIAOMI_DATE = XiaomiHeader.DATE.getName();

    static {
        for (SubResource subResource : SubResource.values()) {
            SUB_RESOURCE_SET.add(subResource.getName());
        }
    }

    static String canonicalizeResource(URI uri) {
        StringBuilder sb = new StringBuilder();
        sb.append(uri.getPath());
        TreeMap treeMap = new TreeMap();
        for (Map.Entry<String, String> entry : Utils.parseUriParameters(uri).entries()) {
            String key = entry.getKey();
            if (SUB_RESOURCE_SET.contains(key)) {
                treeMap.put(key, entry.getValue());
            }
        }
        if (!treeMap.isEmpty()) {
            sb.append("?");
            boolean z = true;
            for (Map.Entry entry2 : treeMap.entrySet()) {
                if (z) {
                    z = false;
                    sb.append((String) entry2.getKey());
                } else {
                    sb.append(ContainerUtils.FIELD_DELIMITER);
                    sb.append((String) entry2.getKey());
                }
                if (!((String) entry2.getValue()).isEmpty()) {
                    sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
                    sb.append((String) entry2.getValue());
                }
            }
        }
        return sb.toString();
    }

    static String canonicalizeXiaomiHeaders(LinkedListMultimap<String, String> linkedListMultimap) {
        if (linkedListMultimap == null) {
            return "";
        }
        TreeMap treeMap = new TreeMap();
        for (String str : linkedListMultimap.keySet()) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.startsWith("x-xiaomi-")) {
                treeMap.put(lowerCase, Joiner.m16726on(',').join(linkedListMultimap.get((LinkedListMultimap<String, String>) str)));
            }
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : treeMap.entrySet()) {
            sb.append((String) entry.getKey());
            sb.append(Constants.COLON_SEPARATOR);
            sb.append((String) entry.getValue());
            sb.append("\n");
        }
        return sb.toString();
    }

    static String checkAndGet(String str) {
        return str == null ? "" : str;
    }

    static List<String> checkAndGet(LinkedListMultimap<String, String> linkedListMultimap, String str) {
        LinkedList linkedList = new LinkedList();
        if (linkedListMultimap == null) {
            linkedList.add("");
            return linkedList;
        }
        List<String> list = linkedListMultimap.get((LinkedListMultimap<String, String>) str);
        if (list == null || list.isEmpty()) {
            linkedList.add("");
            return linkedList;
        }
        return list;
    }

    static String constructStringToSign(HttpMethod httpMethod, URI uri, LinkedListMultimap<String, String> linkedListMultimap) {
        StringBuilder sb = new StringBuilder();
        sb.append(httpMethod.name());
        sb.append("\n");
        sb.append(checkAndGet(linkedListMultimap, Common.CONTENT_MD5).get(0));
        sb.append("\n");
        sb.append(checkAndGet(linkedListMultimap, Common.CONTENT_TYPE).get(0));
        sb.append("\n");
        long expires = getExpires(uri);
        if (expires > 0) {
            sb.append(expires);
            sb.append("\n");
        } else {
            sb.append(checkAndGet("".equals(checkAndGet(linkedListMultimap, XIAOMI_DATE).get(0)) ? checkAndGet(linkedListMultimap, Common.DATE).get(0) : ""));
            sb.append("\n");
        }
        sb.append(canonicalizeXiaomiHeaders(linkedListMultimap));
        sb.append(canonicalizeResource(uri));
        return sb.toString();
    }

    public static URI generatePresignedUri(String str, String str2, String str3, List<String> list, Date date, HttpMethod httpMethod, String str4, String str5, SignAlgorithm signAlgorithm) throws GalaxyFDSException {
        URI uri;
        try {
            URI uri2 = new URI(str);
            if (list != null && !list.isEmpty()) {
                uri = new URI(uri2.getScheme(), null, uri2.getHost(), uri2.getPort(), "/" + str2 + "/" + str3, C6718a.m278b(list, ContainerUtils.FIELD_DELIMITER) + ContainerUtils.FIELD_DELIMITER + "GalaxyAccessKeyId" + ContainerUtils.KEY_VALUE_DELIMITER + str4 + ContainerUtils.FIELD_DELIMITER + "Expires" + ContainerUtils.KEY_VALUE_DELIMITER + date.getTime(), null);
                return new URI(uri.toString() + ContainerUtils.FIELD_DELIMITER + "Signature" + ContainerUtils.KEY_VALUE_DELIMITER + signToBase64(httpMethod, uri, null, str5, signAlgorithm));
            }
            uri = new URI(uri2.getScheme(), null, uri2.getHost(), uri2.getPort(), "/" + str2 + "/" + str3, "GalaxyAccessKeyId=" + str4 + ContainerUtils.FIELD_DELIMITER + "Expires" + ContainerUtils.KEY_VALUE_DELIMITER + date.getTime(), null);
            return new URI(uri.toString() + ContainerUtils.FIELD_DELIMITER + "Signature" + ContainerUtils.KEY_VALUE_DELIMITER + signToBase64(httpMethod, uri, null, str5, signAlgorithm));
        } catch (URISyntaxException e) {
            LOG.error("Invalid URI syntax", e);
            throw new GalaxyFDSException("Invalid URI syntax", e);
        } catch (InvalidKeyException e2) {
            LOG.error("Invalid secret key spec", e2);
            throw new GalaxyFDSException("Invalid secret key spec", e2);
        } catch (NoSuchAlgorithmException e3) {
            LOG.error("Unsupported signature algorithm:" + signAlgorithm, e3);
            throw new GalaxyFDSException("Unsupported signature algorithm:" + signAlgorithm, e3);
        }
    }

    public static String getAuthorizationHeader(HttpMethod httpMethod, URI uri, LinkedListMultimap linkedListMultimap, String str, String str2, SignAlgorithm signAlgorithm) throws NoSuchAlgorithmException, InvalidKeyException {
        String signToBase64 = signToBase64(httpMethod, uri, linkedListMultimap, str2, signAlgorithm);
        return "Galaxy-V2 " + str + Constants.COLON_SEPARATOR + signToBase64;
    }

    static long getExpires(URI uri) {
        List<String> list = Utils.parseUriParameters(uri).get((LinkedListMultimap<String, String>) "Expires");
        if (list == null || list.isEmpty()) {
            return 0L;
        }
        return Long.parseLong(list.get(0));
    }

    public static byte[] sign(HttpMethod httpMethod, URI uri, LinkedListMultimap<String, String> linkedListMultimap, String str, SignAlgorithm signAlgorithm) throws NoSuchAlgorithmException, InvalidKeyException {
        Preconditions.checkNotNull(httpMethod);
        Preconditions.checkNotNull(uri);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(signAlgorithm);
        String constructStringToSign = constructStringToSign(httpMethod, uri, linkedListMultimap);
        Log log = LOG;
        if (log.isDebugEnabled()) {
            log.debug("Sign for request: " + httpMethod + " " + uri + ", stringToSign=" + constructStringToSign);
        }
        Mac mac = Mac.getInstance(signAlgorithm.name());
        mac.init(new SecretKeySpec(str.getBytes(), signAlgorithm.name()));
        return mac.doFinal(constructStringToSign.getBytes());
    }

    public static String signToBase64(HttpMethod httpMethod, URI uri, LinkedListMultimap linkedListMultimap, String str, SignAlgorithm signAlgorithm) throws NoSuchAlgorithmException, InvalidKeyException {
        return Base64Util.encode(sign(httpMethod, uri, linkedListMultimap, str, signAlgorithm));
    }
}
