.class public interface abstract Lcom/mi/milinkforgame/sdk/data/Const$Access;
.super Ljava/lang/Object;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/data/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Access"
.end annotation


# static fields
.field public static final B2Login:Ljava/lang/String; = "mns.internal.login.b2"

.field public static final BackupIP:Ljava/lang/String; = "access.server.backup"

.field public static final Connect:Ljava/lang/String; = "mns.internal.connect"

.field public static final DataThreshold:Ljava/lang/String; = "access.data.count"

.field public static final DefBackupIP:Ljava/lang/String;

.field public static final DefDataThreshold:I = 0x32

.field public static final DefSampleRate:I = 0xa

.field public static final DefTimeThreshold:J = 0x927c0L

.field public static final DnsResolve:Ljava/lang/String; = "mns.internal.dnsresolve"

.field public static final GuestPostfix:Ljava/lang/String; = ".mi"

.field public static final HandShake:Ljava/lang/String; = "mns.internal.handshake"

.field public static final Heartbeat:Ljava/lang/String; = "mns.internal.heartbeat"

.field public static final NetMatchInfo:Ljava/lang/String; = "mns.internal.netmatchinfo"

.field public static final OpenSession:Ljava/lang/String; = "mns.internal.opensession"

.field public static final SampleRate:Ljava/lang/String; = "access.samplerate"

.field public static final TimeThreshold:Ljava/lang/String; = "access.time.interval"

.field public static final WtLogin:Ljava/lang/String; = "mns.internal.login.wt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milinkforgame/sdk/data/Const$Access;->DefBackupIP:Ljava/lang/String;

    return-void
.end method
