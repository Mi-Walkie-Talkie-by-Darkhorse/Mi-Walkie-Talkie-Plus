.class public Lio/agora/rtc/internal/f$b;
.super Lio/agora/rtc/internal/e;
.source "RtcEngineMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lio/agora/rtc/internal/e;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lio/agora/rtc/internal/f$b;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/agora/rtc/internal/f$b;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/agora/rtc/internal/f$b;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/agora/rtc/internal/f$b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/agora/rtc/internal/f$b;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lio/agora/rtc/internal/f$b;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/agora/rtc/internal/f$b;->l:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)V
    .locals 0

    invoke-super {p0, p1}, Lio/agora/rtc/internal/e;->a(I)V

    return-void
.end method

.method public a(Lio/agora/rtc/internal/e;)V
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a([B)V

    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a([B)V

    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a([B)V

    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a([B)V

    iget v0, p0, Lio/agora/rtc/internal/f$b;->e:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a(I)V

    iget v0, p0, Lio/agora/rtc/internal/f$b;->f:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a(I)V

    iget v0, p0, Lio/agora/rtc/internal/f$b;->g:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a(I)V

    iget v0, p0, Lio/agora/rtc/internal/f$b;->h:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a(I)V

    iget v0, p0, Lio/agora/rtc/internal/f$b;->i:I

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a(I)V

    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a([B)V

    :goto_0
    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a([B)V

    :goto_1
    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/agora/rtc/internal/f$b;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a(Ljava/util/ArrayList;)V

    :goto_2
    return-void

    :cond_0
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a([B)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a([B)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lio/agora/rtc/internal/e;->a(Ljava/util/ArrayList;)V

    goto :goto_2
.end method

.method public bridge synthetic a(Ljava/util/ArrayList;)V
    .locals 0

    invoke-super {p0, p1}, Lio/agora/rtc/internal/e;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic a(S)V
    .locals 0

    invoke-super {p0, p1}, Lio/agora/rtc/internal/e;->a(S)V

    return-void
.end method

.method public bridge synthetic a([B)V
    .locals 0

    invoke-super {p0, p1}, Lio/agora/rtc/internal/e;->a([B)V

    return-void
.end method

.method public a()[B
    .locals 1

    invoke-virtual {p0, p0}, Lio/agora/rtc/internal/f$b;->a(Lio/agora/rtc/internal/e;)V

    invoke-super {p0}, Lio/agora/rtc/internal/e;->a()[B

    move-result-object v0

    return-object v0
.end method
