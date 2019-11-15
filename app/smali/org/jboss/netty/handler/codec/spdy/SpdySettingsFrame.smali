.class public interface abstract Lorg/jboss/netty/handler/codec/spdy/SpdySettingsFrame;
.super Ljava/lang/Object;
.source "SpdySettingsFrame.java"


# static fields
.field public static final SETTINGS_CLIENT_CERTIFICATE_VECTOR_SIZE:I = 0x8

.field public static final SETTINGS_CURRENT_CWND:I = 0x5

.field public static final SETTINGS_DOWNLOAD_BANDWIDTH:I = 0x2

.field public static final SETTINGS_DOWNLOAD_RETRANS_RATE:I = 0x6

.field public static final SETTINGS_INITIAL_WINDOW_SIZE:I = 0x7

.field public static final SETTINGS_MAX_CONCURRENT_STREAMS:I = 0x4

.field public static final SETTINGS_ROUND_TRIP_TIME:I = 0x3

.field public static final SETTINGS_UPLOAD_BANDWIDTH:I = 0x1


# virtual methods
.method public abstract clearPreviouslyPersistedSettings()Z
.end method

.method public abstract getIDs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIds()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValue(I)I
.end method

.method public abstract isPersistValue(I)Z
.end method

.method public abstract isPersisted(I)Z
.end method

.method public abstract isSet(I)Z
.end method

.method public abstract persistValue(I)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeValue(I)V
.end method

.method public abstract setClearPreviouslyPersistedSettings(Z)V
.end method

.method public abstract setPersistValue(IZ)V
.end method

.method public abstract setPersisted(IZ)V
.end method

.method public abstract setValue(II)V
.end method

.method public abstract setValue(IIZZ)V
.end method
