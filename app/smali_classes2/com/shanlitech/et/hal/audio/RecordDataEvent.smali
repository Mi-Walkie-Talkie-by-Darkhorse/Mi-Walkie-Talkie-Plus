.class public Lcom/shanlitech/et/hal/audio/RecordDataEvent;
.super Ljava/lang/Object;
.source "RecordDataEvent.java"


# instance fields
.field private data:[B

.field private index:I

.field private lenght:I

.field private time:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/hal/audio/RecordDataEvent;->time:J

    return-void
.end method

.method public static post([BII)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/hal/audio/RecordDataEvent;

    invoke-direct {v0}, Lcom/shanlitech/et/hal/audio/RecordDataEvent;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/shanlitech/et/hal/audio/RecordDataEvent;->data:[B

    .line 3
    iput p1, v0, Lcom/shanlitech/et/hal/audio/RecordDataEvent;->index:I

    .line 4
    iput p2, v0, Lcom/shanlitech/et/hal/audio/RecordDataEvent;->lenght:I

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/hal/audio/RecordDataEvent;->data:[B

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/hal/audio/RecordDataEvent;->index:I

    return v0
.end method

.method public getLenght()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shanlitech/et/hal/audio/RecordDataEvent;->lenght:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/hal/audio/RecordDataEvent;->time:J

    return-wide v0
.end method
