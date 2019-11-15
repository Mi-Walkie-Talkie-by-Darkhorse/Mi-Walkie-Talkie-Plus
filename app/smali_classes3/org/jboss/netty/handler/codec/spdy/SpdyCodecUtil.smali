.class final Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;
.super Ljava/lang/Object;
.source "SpdyCodecUtil.java"


# static fields
.field static final SPDY2_DICT:[B

.field private static final SPDY2_DICT_S:Ljava/lang/String; = "optionsgetheadpostputdeletetraceacceptaccept-charsetaccept-encodingaccept-languageauthorizationexpectfromhostif-modified-sinceif-matchif-none-matchif-rangeif-unmodifiedsincemax-forwardsproxy-authorizationrangerefererteuser-agent100101200201202203204205206300301302303304305306307400401402403404405406407408409410411412413414415416417500501502503504505accept-rangesageetaglocationproxy-authenticatepublicretry-afterservervarywarningwww-authenticateallowcontent-basecontent-encodingcache-controlconnectiondatetrailertransfer-encodingupgradeviawarningcontent-languagecontent-lengthcontent-locationcontent-md5content-rangecontent-typeetagexpireslast-modifiedset-cookieMondayTuesdayWednesdayThursdayFridaySaturdaySundayJanFebMarAprMayJunJulAugSepOctNovDecchunkedtext/htmlimage/pngimage/jpgimage/gifapplication/xmlapplication/xhtmltext/plainpublicmax-agecharset=iso-8859-1utf-8gzipdeflateHTTP/1.1statusversionurl "

.field static final SPDY_CREDENTIAL_FRAME:I = 0xa

.field static final SPDY_DATA_FLAG_FIN:B = 0x1t

.field static final SPDY_DICT:[B

.field static final SPDY_FLAG_FIN:B = 0x1t

.field static final SPDY_FLAG_UNIDIRECTIONAL:B = 0x2t

.field static final SPDY_GOAWAY_FRAME:I = 0x7

.field static final SPDY_HEADERS_FRAME:I = 0x8

.field static final SPDY_HEADER_FLAGS_OFFSET:I = 0x4

.field static final SPDY_HEADER_LENGTH_OFFSET:I = 0x5

.field static final SPDY_HEADER_SIZE:I = 0x8

.field static final SPDY_HEADER_TYPE_OFFSET:I = 0x2

.field static final SPDY_MAX_LENGTH:I = 0xffffff

.field static final SPDY_MAX_NV_LENGTH:I = 0xffff

.field static final SPDY_MAX_VERSION:I = 0x3

.field static final SPDY_MIN_VERSION:I = 0x2

.field static final SPDY_NOOP_FRAME:I = 0x5

.field static final SPDY_PING_FRAME:I = 0x6

.field static final SPDY_RST_STREAM_FRAME:I = 0x3

.field static final SPDY_SETTINGS_CLEAR:B = 0x1t

.field static final SPDY_SETTINGS_FRAME:I = 0x4

.field static final SPDY_SETTINGS_MAX_ID:I = 0xffffff

.field static final SPDY_SETTINGS_PERSISTED:B = 0x2t

.field static final SPDY_SETTINGS_PERSIST_VALUE:B = 0x1t

.field static final SPDY_SYN_REPLY_FRAME:I = 0x2

.field static final SPDY_SYN_STREAM_FRAME:I = 0x1

.field static final SPDY_WINDOW_UPDATE_FRAME:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x58f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY_DICT:[B

    :try_start_0
    const-string v0, "optionsgetheadpostputdeletetraceacceptaccept-charsetaccept-encodingaccept-languageauthorizationexpectfromhostif-modified-sinceif-matchif-none-matchif-rangeif-unmodifiedsincemax-forwardsproxy-authorizationrangerefererteuser-agent100101200201202203204205206300301302303304305306307400401402403404405406407408409410411412413414415416417500501502503504505accept-rangesageetaglocationproxy-authenticatepublicretry-afterservervarywarningwww-authenticateallowcontent-basecontent-encodingcache-controlconnectiondatetrailertransfer-encodingupgradeviawarningcontent-languagecontent-lengthcontent-locationcontent-md5content-rangecontent-typeetagexpireslast-modifiedset-cookieMondayTuesdayWednesdayThursdayFridaySaturdaySundayJanFebMarAprMayJunJulAugSepOctNovDecchunkedtext/htmlimage/pngimage/jpgimage/gifapplication/xmlapplication/xhtmltext/plainpublicmax-agecharset=iso-8859-1utf-8gzipdeflateHTTP/1.1statusversionurl "

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyCodecUtil;->SPDY2_DICT:[B

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [B

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x7t
        0x6ft
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x73t
        0x0t
        0x0t
        0x0t
        0x4t
        0x68t
        0x65t
        0x61t
        0x64t
        0x0t
        0x0t
        0x0t
        0x4t
        0x70t
        0x6ft
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x3t
        0x70t
        0x75t
        0x74t
        0x0t
        0x0t
        0x0t
        0x6t
        0x64t
        0x65t
        0x6ct
        0x65t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x5t
        0x74t
        0x72t
        0x61t
        0x63t
        0x65t
        0x0t
        0x0t
        0x0t
        0x6t
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x0t
        0x0t
        0x0t
        0xet
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x2dt
        0x63t
        0x68t
        0x61t
        0x72t
        0x73t
        0x65t
        0x74t
        0x0t
        0x0t
        0x0t
        0xft
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x2dt
        0x65t
        0x6et
        0x63t
        0x6ft
        0x64t
        0x69t
        0x6et
        0x67t
        0x0t
        0x0t
        0x0t
        0xft
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x2dt
        0x6ct
        0x61t
        0x6et
        0x67t
        0x75t
        0x61t
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0xdt
        0x61t
        0x63t
        0x63t
        0x65t
        0x70t
        0x74t
        0x2dt
        0x72t
        0x61t
        0x6et
        0x67t
        0x65t
        0x73t
        0x0t
        0x0t
        0x0t
        0x3t
        0x61t
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0x5t
        0x61t
        0x6ct
        0x6ct
        0x6ft
        0x77t
        0x0t
        0x0t
        0x0t
        0xdt
        0x61t
        0x75t
        0x74t
        0x68t
        0x6ft
        0x72t
        0x69t
        0x7at
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0xdt
        0x63t
        0x61t
        0x63t
        0x68t
        0x65t
        0x2dt
        0x63t
        0x6ft
        0x6et
        0x74t
        0x72t
        0x6ft
        0x6ct
        0x0t
        0x0t
        0x0t
        0xat
        0x63t
        0x6ft
        0x6et
        0x6et
        0x65t
        0x63t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0xct
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x62t
        0x61t
        0x73t
        0x65t
        0x0t
        0x0t
        0x0t
        0x10t
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x65t
        0x6et
        0x63t
        0x6ft
        0x64t
        0x69t
        0x6et
        0x67t
        0x0t
        0x0t
        0x0t
        0x10t
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x6ct
        0x61t
        0x6et
        0x67t
        0x75t
        0x61t
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0xet
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x6ct
        0x65t
        0x6et
        0x67t
        0x74t
        0x68t
        0x0t
        0x0t
        0x0t
        0x10t
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x6ct
        0x6ft
        0x63t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0xbt
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x6dt
        0x64t
        0x35t
        0x0t
        0x0t
        0x0t
        0xdt
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x72t
        0x61t
        0x6et
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0xct
        0x63t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x2dt
        0x74t
        0x79t
        0x70t
        0x65t
        0x0t
        0x0t
        0x0t
        0x4t
        0x64t
        0x61t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x4t
        0x65t
        0x74t
        0x61t
        0x67t
        0x0t
        0x0t
        0x0t
        0x6t
        0x65t
        0x78t
        0x70t
        0x65t
        0x63t
        0x74t
        0x0t
        0x0t
        0x0t
        0x7t
        0x65t
        0x78t
        0x70t
        0x69t
        0x72t
        0x65t
        0x73t
        0x0t
        0x0t
        0x0t
        0x4t
        0x66t
        0x72t
        0x6ft
        0x6dt
        0x0t
        0x0t
        0x0t
        0x4t
        0x68t
        0x6ft
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x8t
        0x69t
        0x66t
        0x2dt
        0x6dt
        0x61t
        0x74t
        0x63t
        0x68t
        0x0t
        0x0t
        0x0t
        0x11t
        0x69t
        0x66t
        0x2dt
        0x6dt
        0x6ft
        0x64t
        0x69t
        0x66t
        0x69t
        0x65t
        0x64t
        0x2dt
        0x73t
        0x69t
        0x6et
        0x63t
        0x65t
        0x0t
        0x0t
        0x0t
        0xdt
        0x69t
        0x66t
        0x2dt
        0x6et
        0x6ft
        0x6et
        0x65t
        0x2dt
        0x6dt
        0x61t
        0x74t
        0x63t
        0x68t
        0x0t
        0x0t
        0x0t
        0x8t
        0x69t
        0x66t
        0x2dt
        0x72t
        0x61t
        0x6et
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0x13t
        0x69t
        0x66t
        0x2dt
        0x75t
        0x6et
        0x6dt
        0x6ft
        0x64t
        0x69t
        0x66t
        0x69t
        0x65t
        0x64t
        0x2dt
        0x73t
        0x69t
        0x6et
        0x63t
        0x65t
        0x0t
        0x0t
        0x0t
        0xdt
        0x6ct
        0x61t
        0x73t
        0x74t
        0x2dt
        0x6dt
        0x6ft
        0x64t
        0x69t
        0x66t
        0x69t
        0x65t
        0x64t
        0x0t
        0x0t
        0x0t
        0x8t
        0x6ct
        0x6ft
        0x63t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0xct
        0x6dt
        0x61t
        0x78t
        0x2dt
        0x66t
        0x6ft
        0x72t
        0x77t
        0x61t
        0x72t
        0x64t
        0x73t
        0x0t
        0x0t
        0x0t
        0x6t
        0x70t
        0x72t
        0x61t
        0x67t
        0x6dt
        0x61t
        0x0t
        0x0t
        0x0t
        0x12t
        0x70t
        0x72t
        0x6ft
        0x78t
        0x79t
        0x2dt
        0x61t
        0x75t
        0x74t
        0x68t
        0x65t
        0x6et
        0x74t
        0x69t
        0x63t
        0x61t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x13t
        0x70t
        0x72t
        0x6ft
        0x78t
        0x79t
        0x2dt
        0x61t
        0x75t
        0x74t
        0x68t
        0x6ft
        0x72t
        0x69t
        0x7at
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0x5t
        0x72t
        0x61t
        0x6et
        0x67t
        0x65t
        0x0t
        0x0t
        0x0t
        0x7t
        0x72t
        0x65t
        0x66t
        0x65t
        0x72t
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0xbt
        0x72t
        0x65t
        0x74t
        0x72t
        0x79t
        0x2dt
        0x61t
        0x66t
        0x74t
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0x6t
        0x73t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0x2t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x7t
        0x74t
        0x72t
        0x61t
        0x69t
        0x6ct
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0x11t
        0x74t
        0x72t
        0x61t
        0x6et
        0x73t
        0x66t
        0x65t
        0x72t
        0x2dt
        0x65t
        0x6et
        0x63t
        0x6ft
        0x64t
        0x69t
        0x6et
        0x67t
        0x0t
        0x0t
        0x0t
        0x7t
        0x75t
        0x70t
        0x67t
        0x72t
        0x61t
        0x64t
        0x65t
        0x0t
        0x0t
        0x0t
        0xat
        0x75t
        0x73t
        0x65t
        0x72t
        0x2dt
        0x61t
        0x67t
        0x65t
        0x6et
        0x74t
        0x0t
        0x0t
        0x0t
        0x4t
        0x76t
        0x61t
        0x72t
        0x79t
        0x0t
        0x0t
        0x0t
        0x3t
        0x76t
        0x69t
        0x61t
        0x0t
        0x0t
        0x0t
        0x7t
        0x77t
        0x61t
        0x72t
        0x6et
        0x69t
        0x6et
        0x67t
        0x0t
        0x0t
        0x0t
        0x10t
        0x77t
        0x77t
        0x77t
        0x2dt
        0x61t
        0x75t
        0x74t
        0x68t
        0x65t
        0x6et
        0x74t
        0x69t
        0x63t
        0x61t
        0x74t
        0x65t
        0x0t
        0x0t
        0x0t
        0x6t
        0x6dt
        0x65t
        0x74t
        0x68t
        0x6ft
        0x64t
        0x0t
        0x0t
        0x0t
        0x3t
        0x67t
        0x65t
        0x74t
        0x0t
        0x0t
        0x0t
        0x6t
        0x73t
        0x74t
        0x61t
        0x74t
        0x75t
        0x73t
        0x0t
        0x0t
        0x0t
        0x6t
        0x32t
        0x30t
        0x30t
        0x20t
        0x4ft
        0x4bt
        0x0t
        0x0t
        0x0t
        0x7t
        0x76t
        0x65t
        0x72t
        0x73t
        0x69t
        0x6ft
        0x6et
        0x0t
        0x0t
        0x0t
        0x8t
        0x48t
        0x54t
        0x54t
        0x50t
        0x2ft
        0x31t
        0x2et
        0x31t
        0x0t
        0x0t
        0x0t
        0x3t
        0x75t
        0x72t
        0x6ct
        0x0t
        0x0t
        0x0t
        0x6t
        0x70t
        0x75t
        0x62t
        0x6ct
        0x69t
        0x63t
        0x0t
        0x0t
        0x0t
        0xat
        0x73t
        0x65t
        0x74t
        0x2dt
        0x63t
        0x6ft
        0x6ft
        0x6bt
        0x69t
        0x65t
        0x0t
        0x0t
        0x0t
        0xat
        0x6bt
        0x65t
        0x65t
        0x70t
        0x2dt
        0x61t
        0x6ct
        0x69t
        0x76t
        0x65t
        0x0t
        0x0t
        0x0t
        0x6t
        0x6ft
        0x72t
        0x69t
        0x67t
        0x69t
        0x6et
        0x31t
        0x30t
        0x30t
        0x31t
        0x30t
        0x31t
        0x32t
        0x30t
        0x31t
        0x32t
        0x30t
        0x32t
        0x32t
        0x30t
        0x35t
        0x32t
        0x30t
        0x36t
        0x33t
        0x30t
        0x30t
        0x33t
        0x30t
        0x32t
        0x33t
        0x30t
        0x33t
        0x33t
        0x30t
        0x34t
        0x33t
        0x30t
        0x35t
        0x33t
        0x30t
        0x36t
        0x33t
        0x30t
        0x37t
        0x34t
        0x30t
        0x32t
        0x34t
        0x30t
        0x35t
        0x34t
        0x30t
        0x36t
        0x34t
        0x30t
        0x37t
        0x34t
        0x30t
        0x38t
        0x34t
        0x30t
        0x39t
        0x34t
        0x31t
        0x30t
        0x34t
        0x31t
        0x31t
        0x34t
        0x31t
        0x32t
        0x34t
        0x31t
        0x33t
        0x34t
        0x31t
        0x34t
        0x34t
        0x31t
        0x35t
        0x34t
        0x31t
        0x36t
        0x34t
        0x31t
        0x37t
        0x35t
        0x30t
        0x32t
        0x35t
        0x30t
        0x34t
        0x35t
        0x30t
        0x35t
        0x32t
        0x30t
        0x33t
        0x20t
        0x4et
        0x6ft
        0x6et
        0x2dt
        0x41t
        0x75t
        0x74t
        0x68t
        0x6ft
        0x72t
        0x69t
        0x74t
        0x61t
        0x74t
        0x69t
        0x76t
        0x65t
        0x20t
        0x49t
        0x6et
        0x66t
        0x6ft
        0x72t
        0x6dt
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x32t
        0x30t
        0x34t
        0x20t
        0x4et
        0x6ft
        0x20t
        0x43t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x74t
        0x33t
        0x30t
        0x31t
        0x20t
        0x4dt
        0x6ft
        0x76t
        0x65t
        0x64t
        0x20t
        0x50t
        0x65t
        0x72t
        0x6dt
        0x61t
        0x6et
        0x65t
        0x6et
        0x74t
        0x6ct
        0x79t
        0x34t
        0x30t
        0x30t
        0x20t
        0x42t
        0x61t
        0x64t
        0x20t
        0x52t
        0x65t
        0x71t
        0x75t
        0x65t
        0x73t
        0x74t
        0x34t
        0x30t
        0x31t
        0x20t
        0x55t
        0x6et
        0x61t
        0x75t
        0x74t
        0x68t
        0x6ft
        0x72t
        0x69t
        0x7at
        0x65t
        0x64t
        0x34t
        0x30t
        0x33t
        0x20t
        0x46t
        0x6ft
        0x72t
        0x62t
        0x69t
        0x64t
        0x64t
        0x65t
        0x6et
        0x34t
        0x30t
        0x34t
        0x20t
        0x4et
        0x6ft
        0x74t
        0x20t
        0x46t
        0x6ft
        0x75t
        0x6et
        0x64t
        0x35t
        0x30t
        0x30t
        0x20t
        0x49t
        0x6et
        0x74t
        0x65t
        0x72t
        0x6et
        0x61t
        0x6ct
        0x20t
        0x53t
        0x65t
        0x72t
        0x76t
        0x65t
        0x72t
        0x20t
        0x45t
        0x72t
        0x72t
        0x6ft
        0x72t
        0x35t
        0x30t
        0x31t
        0x20t
        0x4et
        0x6ft
        0x74t
        0x20t
        0x49t
        0x6dt
        0x70t
        0x6ct
        0x65t
        0x6dt
        0x65t
        0x6et
        0x74t
        0x65t
        0x64t
        0x35t
        0x30t
        0x33t
        0x20t
        0x53t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
        0x20t
        0x55t
        0x6et
        0x61t
        0x76t
        0x61t
        0x69t
        0x6ct
        0x61t
        0x62t
        0x6ct
        0x65t
        0x4at
        0x61t
        0x6et
        0x20t
        0x46t
        0x65t
        0x62t
        0x20t
        0x4dt
        0x61t
        0x72t
        0x20t
        0x41t
        0x70t
        0x72t
        0x20t
        0x4dt
        0x61t
        0x79t
        0x20t
        0x4at
        0x75t
        0x6et
        0x20t
        0x4at
        0x75t
        0x6ct
        0x20t
        0x41t
        0x75t
        0x67t
        0x20t
        0x53t
        0x65t
        0x70t
        0x74t
        0x20t
        0x4ft
        0x63t
        0x74t
        0x20t
        0x4et
        0x6ft
        0x76t
        0x20t
        0x44t
        0x65t
        0x63t
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x20t
        0x4dt
        0x6ft
        0x6et
        0x2ct
        0x20t
        0x54t
        0x75t
        0x65t
        0x2ct
        0x20t
        0x57t
        0x65t
        0x64t
        0x2ct
        0x20t
        0x54t
        0x68t
        0x75t
        0x2ct
        0x20t
        0x46t
        0x72t
        0x69t
        0x2ct
        0x20t
        0x53t
        0x61t
        0x74t
        0x2ct
        0x20t
        0x53t
        0x75t
        0x6et
        0x2ct
        0x20t
        0x47t
        0x4dt
        0x54t
        0x63t
        0x68t
        0x75t
        0x6et
        0x6bt
        0x65t
        0x64t
        0x2ct
        0x74t
        0x65t
        0x78t
        0x74t
        0x2ft
        0x68t
        0x74t
        0x6dt
        0x6ct
        0x2ct
        0x69t
        0x6dt
        0x61t
        0x67t
        0x65t
        0x2ft
        0x70t
        0x6et
        0x67t
        0x2ct
        0x69t
        0x6dt
        0x61t
        0x67t
        0x65t
        0x2ft
        0x6at
        0x70t
        0x67t
        0x2ct
        0x69t
        0x6dt
        0x61t
        0x67t
        0x65t
        0x2ft
        0x67t
        0x69t
        0x66t
        0x2ct
        0x61t
        0x70t
        0x70t
        0x6ct
        0x69t
        0x63t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x2ft
        0x78t
        0x6dt
        0x6ct
        0x2ct
        0x61t
        0x70t
        0x70t
        0x6ct
        0x69t
        0x63t
        0x61t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x2ft
        0x78t
        0x68t
        0x74t
        0x6dt
        0x6ct
        0x2bt
        0x78t
        0x6dt
        0x6ct
        0x2ct
        0x74t
        0x65t
        0x78t
        0x74t
        0x2ft
        0x70t
        0x6ct
        0x61t
        0x69t
        0x6et
        0x2ct
        0x74t
        0x65t
        0x78t
        0x74t
        0x2ft
        0x6at
        0x61t
        0x76t
        0x61t
        0x73t
        0x63t
        0x72t
        0x69t
        0x70t
        0x74t
        0x2ct
        0x70t
        0x75t
        0x62t
        0x6ct
        0x69t
        0x63t
        0x70t
        0x72t
        0x69t
        0x76t
        0x61t
        0x74t
        0x65t
        0x6dt
        0x61t
        0x78t
        0x2dt
        0x61t
        0x67t
        0x65t
        0x3dt
        0x67t
        0x7at
        0x69t
        0x70t
        0x2ct
        0x64t
        0x65t
        0x66t
        0x6ct
        0x61t
        0x74t
        0x65t
        0x2ct
        0x73t
        0x64t
        0x63t
        0x68t
        0x63t
        0x68t
        0x61t
        0x72t
        0x73t
        0x65t
        0x74t
        0x3dt
        0x75t
        0x74t
        0x66t
        0x2dt
        0x38t
        0x63t
        0x68t
        0x61t
        0x72t
        0x73t
        0x65t
        0x74t
        0x3dt
        0x69t
        0x73t
        0x6ft
        0x2dt
        0x38t
        0x38t
        0x35t
        0x39t
        0x2dt
        0x31t
        0x2ct
        0x75t
        0x74t
        0x66t
        0x2dt
        0x2ct
        0x2at
        0x2ct
        0x65t
        0x6et
        0x71t
        0x3dt
        0x30t
        0x2et
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I
    .locals 2

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getUnsignedInt(Lorg/jboss/netty/buffer/ChannelBuffer;I)I
    .locals 2

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getUnsignedMedium(Lorg/jboss/netty/buffer/ChannelBuffer;I)I
    .locals 2

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getUnsignedShort(Lorg/jboss/netty/buffer/ChannelBuffer;I)I
    .locals 2

    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static isServerId(I)Z
    .locals 1

    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static validateHeaderName(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be length zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name exceeds allowable length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name contains null character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v2, 0x7f

    if-le v1, v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name contains non-ascii character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static validateHeaderValue(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value contains null character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
