.class public Lorg/bouncycastle/crypto/tls/AlertDescription;
.super Ljava/lang/Object;


# static fields
.field public static final access_denied:S = 0x31s

.field public static final bad_certificate:S = 0x2as

.field public static final bad_certificate_hash_value:S = 0x72s

.field public static final bad_certificate_status_response:S = 0x71s

.field public static final bad_record_mac:S = 0x14s

.field public static final certificate_expired:S = 0x2ds

.field public static final certificate_revoked:S = 0x2cs

.field public static final certificate_unknown:S = 0x2es

.field public static final certificate_unobtainable:S = 0x6fs

.field public static final close_notify:S = 0x0s

.field public static final decode_error:S = 0x32s

.field public static final decompression_failure:S = 0x1es

.field public static final decrypt_error:S = 0x33s

.field public static final decryption_failed:S = 0x15s

.field public static final export_restriction:S = 0x3cs

.field public static final handshake_failure:S = 0x28s

.field public static final illegal_parameter:S = 0x2fs

.field public static final inappropriate_fallback:S = 0x56s

.field public static final insufficient_security:S = 0x47s

.field public static final internal_error:S = 0x50s

.field public static final no_certificate:S = 0x29s

.field public static final no_renegotiation:S = 0x64s

.field public static final protocol_version:S = 0x46s

.field public static final record_overflow:S = 0x16s

.field public static final unexpected_message:S = 0xas

.field public static final unknown_ca:S = 0x30s

.field public static final unknown_psk_identity:S = 0x73s

.field public static final unrecognized_name:S = 0x70s

.field public static final unsupported_certificate:S = 0x2bs

.field public static final unsupported_extension:S = 0x6es

.field public static final user_canceled:S = 0x5as


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(S)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "close_notify"

    goto :goto_0

    :sswitch_1
    const-string v0, "unexpected_message"

    goto :goto_0

    :sswitch_2
    const-string v0, "bad_record_mac"

    goto :goto_0

    :sswitch_3
    const-string v0, "decryption_failed"

    goto :goto_0

    :sswitch_4
    const-string v0, "record_overflow"

    goto :goto_0

    :sswitch_5
    const-string v0, "decompression_failure"

    goto :goto_0

    :sswitch_6
    const-string v0, "handshake_failure"

    goto :goto_0

    :sswitch_7
    const-string v0, "no_certificate"

    goto :goto_0

    :sswitch_8
    const-string v0, "bad_certificate"

    goto :goto_0

    :sswitch_9
    const-string v0, "unsupported_certificate"

    goto :goto_0

    :sswitch_a
    const-string v0, "certificate_revoked"

    goto :goto_0

    :sswitch_b
    const-string v0, "certificate_expired"

    goto :goto_0

    :sswitch_c
    const-string v0, "certificate_unknown"

    goto :goto_0

    :sswitch_d
    const-string v0, "illegal_parameter"

    goto :goto_0

    :sswitch_e
    const-string v0, "unknown_ca"

    goto :goto_0

    :sswitch_f
    const-string v0, "access_denied"

    goto :goto_0

    :sswitch_10
    const-string v0, "decode_error"

    goto :goto_0

    :sswitch_11
    const-string v0, "decrypt_error"

    goto :goto_0

    :sswitch_12
    const-string v0, "export_restriction"

    goto :goto_0

    :sswitch_13
    const-string v0, "protocol_version"

    goto :goto_0

    :sswitch_14
    const-string v0, "insufficient_security"

    goto :goto_0

    :sswitch_15
    const-string v0, "internal_error"

    goto :goto_0

    :sswitch_16
    const-string v0, "user_canceled"

    goto :goto_0

    :sswitch_17
    const-string v0, "no_renegotiation"

    goto :goto_0

    :sswitch_18
    const-string v0, "unsupported_extension"

    goto :goto_0

    :sswitch_19
    const-string v0, "certificate_unobtainable"

    goto :goto_0

    :sswitch_1a
    const-string v0, "unrecognized_name"

    goto :goto_0

    :sswitch_1b
    const-string v0, "bad_certificate_status_response"

    goto :goto_0

    :sswitch_1c
    const-string v0, "bad_certificate_hash_value"

    goto :goto_0

    :sswitch_1d
    const-string v0, "unknown_psk_identity"

    goto :goto_0

    :sswitch_1e
    const-string v0, "inappropriate_fallback"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x1e -> :sswitch_5
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2a -> :sswitch_8
        0x2b -> :sswitch_9
        0x2c -> :sswitch_a
        0x2d -> :sswitch_b
        0x2e -> :sswitch_c
        0x2f -> :sswitch_d
        0x30 -> :sswitch_e
        0x31 -> :sswitch_f
        0x32 -> :sswitch_10
        0x33 -> :sswitch_11
        0x3c -> :sswitch_12
        0x46 -> :sswitch_13
        0x47 -> :sswitch_14
        0x50 -> :sswitch_15
        0x56 -> :sswitch_1e
        0x5a -> :sswitch_16
        0x64 -> :sswitch_17
        0x6e -> :sswitch_18
        0x6f -> :sswitch_19
        0x70 -> :sswitch_1a
        0x71 -> :sswitch_1b
        0x72 -> :sswitch_1c
        0x73 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static getText(S)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/AlertDescription;->getName(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
