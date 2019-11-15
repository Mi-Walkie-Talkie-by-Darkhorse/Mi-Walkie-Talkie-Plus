.class public Lcom/xiaomi/channel/common/audio/PlayerStatus;
.super Ljava/lang/Object;
.source "PlayerStatus.java"


# static fields
.field public static final BUFFERING:I = 0x5

.field public static final DOWNLOADING:I = 0x64

.field public static final FAILED:I = 0x0

.field public static final PAUSE:I = 0x6

.field public static final PREPARE:I = 0x1

.field public static final RESUME:I = 0x7

.field public static final START:I = 0x2

.field public static final STOP:I = 0x3

.field public static final UPDATE:I = 0x4


# instance fields
.field public final duration:I

.field public final progress:I

.field public final type:I

.field public final uniqueId:J


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(IIIJ)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(IIIJ)V

    return-void
.end method

.method public constructor <init>(IIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/channel/common/audio/PlayerStatus;->type:I

    iput p2, p0, Lcom/xiaomi/channel/common/audio/PlayerStatus;->duration:I

    iput p3, p0, Lcom/xiaomi/channel/common/audio/PlayerStatus;->progress:I

    iput-wide p4, p0, Lcom/xiaomi/channel/common/audio/PlayerStatus;->uniqueId:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/channel/common/audio/PlayerStatus;-><init>(IIIJ)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Plat Status, type = %1$s, duration = %2$s, progress = %3$s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaomi/channel/common/audio/PlayerStatus;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/xiaomi/channel/common/audio/PlayerStatus;->duration:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/xiaomi/channel/common/audio/PlayerStatus;->progress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
