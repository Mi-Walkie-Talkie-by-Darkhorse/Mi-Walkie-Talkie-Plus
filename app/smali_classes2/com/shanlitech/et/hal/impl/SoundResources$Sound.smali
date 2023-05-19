.class Lcom/shanlitech/et/hal/impl/SoundResources$Sound;
.super Ljava/lang/Object;
.source "SoundResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/hal/impl/SoundResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sound"
.end annotation


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private btHandle:I

.field private btSoundPool:Landroid/media/SoundPool;

.field private mHandle:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mVolume:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/media/SoundPool;Landroid/media/SoundPool;Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x3e19999a    # 0.15f

    .line 2
    iput p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mVolume:F

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mSoundPool:Landroid/media/SoundPool;

    .line 4
    iput-object p3, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->btSoundPool:Landroid/media/SoundPool;

    .line 5
    invoke-virtual {p2, p4, p5, p6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mHandle:I

    .line 6
    iget-object p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->btSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1, p4, p5, p6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->btHandle:I

    const-string p1, "audio"

    .line 7
    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/media/SoundPool;Landroid/media/SoundPool;Landroid/content/Context;IIF)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x3e19999a    # 0.15f

    .line 9
    iput p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mVolume:F

    .line 10
    iput-object p2, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mSoundPool:Landroid/media/SoundPool;

    .line 11
    iput-object p3, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->btSoundPool:Landroid/media/SoundPool;

    .line 12
    invoke-virtual {p2, p4, p5, p6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mHandle:I

    .line 13
    iput p7, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mVolume:F

    .line 14
    iget-object p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->btSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1, p4, p5, p6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->btHandle:I

    const-string p1, "audio"

    .line 15
    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->audioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public play()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->btSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->btHandle:I

    iget v4, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mVolume:F

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v4

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v8, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mSoundPool:Landroid/media/SoundPool;

    iget v9, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mHandle:I

    iget v11, p0, Lcom/shanlitech/et/hal/impl/SoundResources$Sound;->mVolume:F

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move v10, v11

    invoke-virtual/range {v8 .. v14}, Landroid/media/SoundPool;->play(IFFIIF)I

    :goto_0
    return-void
.end method
