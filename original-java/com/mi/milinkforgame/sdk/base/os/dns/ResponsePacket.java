package com.mi.milinkforgame.sdk.base.os.dns;

import com.mi.milinkforgame.sdk.base.debug.CustomLogcat;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;

public class ResponsePacket {
    private static final int LABEL_COMPRESSION = 192;
    private static final int LABEL_MASK = 192;
    private static final int LABEL_NORMAL = 0;
    private static final int MAXLABEL = 64;
    private static final int SECTION_ADDRESS = 1;
    private static final int SECTION_QUESTION = 0;
    private int[] counts = new int[4];
    private long expireTime = 0;
    private int flags;
    private String host = "";
    private DNSInput in;
    private byte[] label = new byte[64];
    private StringBuilder nameBuilder = new StringBuilder();
    private int reqId;
    private ArrayList[] sections;

    public ResponsePacket(DNSInput dNSInput, String str) throws WireParseException, UnknownHostException, Exception {
        this.in = dNSInput;
        this.host = str;
        this.sections = new ArrayList[4];
        initHeader();
        check(this.flags);
        parseAnswer();
    }

    public ArrayList<AnswerRecord> getAnswers() {
        return this.sections[1];
    }

    public InetAddress[] getByAddress() {
        if (this.sections[1] == null || this.sections[1].size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.sections[1].size()) {
                return (InetAddress[]) arrayList.toArray(new InetAddress[arrayList.size()]);
            }
            AnswerRecord answerRecord = (AnswerRecord) this.sections[1].get(i2);
            try {
                InetAddress byAddress = InetAddress.getByAddress(answerRecord.domain, answerRecord.ip);
                if (!(byAddress == null || byAddress.getHostName() == null || byAddress.getHostName().equals(byAddress.getHostAddress()))) {
                    arrayList.add(byAddress);
                }
            } catch (UnknownHostException e) {
                CustomLogcat.e("ResponsePacket", "getByAddress>>>", e);
            }
            i = i2 + 1;
        }
    }

    public long getExpireTime() {
        return this.expireTime;
    }

    public int getReqId() {
        return this.reqId;
    }

    private void initHeader() throws WireParseException {
        this.reqId = this.in.readU16();
        this.flags = this.in.readU16();
        for (int i = 0; i < this.counts.length; i++) {
            this.counts[i] = this.in.readU16();
        }
    }

    private void parseAnswer() throws WireParseException {
        int i = 0;
        while (i < 2) {
            try {
                int i2 = this.counts[i];
                if (i2 > 0) {
                    this.sections[i] = new ArrayList(i2);
                }
                for (int i3 = 0; i3 < i2; i3++) {
                    AnswerRecord answerRecord = new AnswerRecord();
                    if (i == 0) {
                        answerRecord.domain = retrieveName();
                        answerRecord.type = this.in.readU16();
                        answerRecord.qclass = this.in.readU16();
                        this.sections[i].add(answerRecord);
                    } else {
                        retrieveName();
                        answerRecord.domain = this.host;
                        answerRecord.type = this.in.readU16();
                        answerRecord.qclass = this.in.readU16();
                        answerRecord.ttl = this.in.readU32();
                        this.in.setActive(this.in.readU16());
                        answerRecord.ip = this.in.readByteArray();
                        if (answerRecord.type == 1) {
                            setExpireTime(answerRecord.ttl);
                            this.sections[i].add(answerRecord);
                        }
                    }
                }
                i++;
            } catch (WireParseException e) {
                throw e;
            }
        }
    }

    private String retrieveName() throws WireParseException {
        if (this.nameBuilder.length() > 0) {
            this.nameBuilder.delete(0, this.nameBuilder.length());
        }
        boolean z = false;
        boolean z2 = false;
        while (!z2) {
            int readU8 = this.in.readU8();
            switch (readU8 & 192) {
                case 0:
                    if (readU8 != 0) {
                        this.in.readByteArray(this.label, 0, readU8);
                        this.nameBuilder.append(ByteBase.byteString(this.label, readU8));
                        this.nameBuilder.append(".");
                        break;
                    } else {
                        z2 = true;
                        break;
                    }
                case 192:
                    int readU82 = ((readU8 & -193) << 8) + this.in.readU8();
                    if (readU82 < this.in.current() - 2) {
                        if (!z) {
                            this.in.save();
                            z = true;
                        }
                        this.in.jump(readU82);
                        break;
                    } else {
                        throw new WireParseException("bad compression");
                    }
                default:
                    throw new WireParseException("bad label type");
            }
        }
        if (z) {
            this.in.restore();
        }
        if (this.nameBuilder.length() > 0) {
            this.nameBuilder.deleteCharAt(this.nameBuilder.length() - 1);
        }
        return this.nameBuilder.toString();
    }

    private void check(int i) throws UnknownHostException, Exception {
        String binaryString = Integer.toBinaryString(i);
        if (binaryString.length() < 4) {
            throw new Exception("exception cause [FBS - " + binaryString + "]");
        }
        String substring = binaryString.substring(binaryString.length() - 4);
        if (substring.equals("0011")) {
            throw new UnknownHostException("Unable to resolve host \"" + this.host + "\": No address associated with hostname");
        } else if (!substring.equals("0000")) {
            throw new Exception("exception cause [RCODE - " + substring + "][HOST - " + this.host + "]");
        }
    }

    private void setExpireTime(long j) {
        if (this.expireTime == 0 && j > 0) {
            this.expireTime = System.currentTimeMillis() + (1000 * j);
        }
    }
}
