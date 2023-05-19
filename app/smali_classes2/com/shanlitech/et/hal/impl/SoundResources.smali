.class public Lcom/shanlitech/et/hal/impl/SoundResources;
.super Ljava/lang/Object;
.source "SoundResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/hal/impl/SoundResources$Sound;
    }
.end annotation


# static fields
.field private static final MAX_STREAMS:I = 0x4

.field private static mContext:Landroid/content/Context;

.field private static sSoundResources:Lcom/shanlitech/et/hal/impl/SoundResources;


# instance fields
.field private final error:Lcom/shanlitech/et/hal/impl/SoundResources$Sound;

.field private final tone:Lcom/shanlitech/et/hal/impl/SoundResources$Sound;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sput-object p1, Lcom/shanlitech/et/hal/impl/SoundResources;->mContext:Landroid/content/Context;

    .line 3
    new-instance v7, Landroid/media/SoundPool;

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v7, v0, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    .line 4
    new-instance v8, Landroid/media/SoundPool;

    invoke-direct {v8, v0, v2, v2}, Landroid/media/SoundPool;-><init>(III)V

    .line 5
    new-instance v9, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;

    sget v5, Lcom/shanlitech/et/R$raw;->tone:I

    const-string v1, "tone"

    const/4 v6, 0x1

    move-object v0, v9

    move-object v2, v7

    move-object v3, v8

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;-><init>(Ljava/lang/String;Landroid/media/SoundPool;Landroid/media/SoundPool;Landroid/content/Context;II)V

    iput-object v9, p0, Lcom/shanlitech/et/hal/impl/SoundResources;->tone:Lcom/shanlitech/et/hal/impl/SoundResources$Sound;

    .line 6
    new-instance v9, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;

    sget v5, Lcom/shanlitech/et/R$raw;->alert:I

    const-string v1, "error"

    const v10, 0x3d4ccccd    # 0.05f

    move-object v0, v9

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;-><init>(Ljava/lang/String;Landroid/media/SoundPool;Landroid/media/SoundPool;Landroid/content/Context;IIF)V

    iput-object v9, p0, Lcom/shanlitech/et/hal/impl/SoundResources;->error:Lcom/shanlitech/et/hal/impl/SoundResources$Sound;

    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/shanlitech/et/hal/impl/SoundResources;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shanlitech/et/hal/impl/SoundResources;->sSoundResources:Lcom/shanlitech/et/hal/impl/SoundResources;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/shanlitech/et/hal/impl/SoundResources;

    invoke-direct {v1, p0}, Lcom/shanlitech/et/hal/impl/SoundResources;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/shanlitech/et/hal/impl/SoundResources;->sSoundResources:Lcom/shanlitech/et/hal/impl/SoundResources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static play(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shanlitech/et/hal/impl/SoundResources;->sSoundResources:Lcom/shanlitech/et/hal/impl/SoundResources;

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    .line 2
    iget-object p0, v0, Lcom/shanlitech/et/hal/impl/SoundResources;->error:Lcom/shanlitech/et/hal/impl/SoundResources$Sound;

    invoke-virtual {p0}, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->play()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, v0, Lcom/shanlitech/et/hal/impl/SoundResources;->tone:Lcom/shanlitech/et/hal/impl/SoundResources$Sound;

    invoke-virtual {p0}, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->play()V

    :cond_1
    :goto_0
    return-void
.end method
