.class Lio/agora/rtc/internal/a$g;
.super Lio/agora/rtc/internal/a$c;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lio/agora/rtc/internal/a;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iput-object p1, p0, Lio/agora/rtc/internal/a$g;->b:Lio/agora/rtc/internal/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/a$c;-><init>(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$1;)V

    invoke-static {p1}, Lio/agora/rtc/internal/a;->g(Lio/agora/rtc/internal/a;)V

    invoke-static {p1}, Lio/agora/rtc/internal/a;->c(Lio/agora/rtc/internal/a;)V

    invoke-static {p1, v2}, Lio/agora/rtc/internal/a;->f(Lio/agora/rtc/internal/a;Z)Z

    invoke-static {p1, v1}, Lio/agora/rtc/internal/a;->h(Lio/agora/rtc/internal/a;I)I

    invoke-static {p1, v1}, Lio/agora/rtc/internal/a;->i(Lio/agora/rtc/internal/a;I)I

    invoke-static {p1, v1}, Lio/agora/rtc/internal/a;->f(Lio/agora/rtc/internal/a;I)I

    invoke-static {p1, v2}, Lio/agora/rtc/internal/a;->a(Lio/agora/rtc/internal/a;I)I

    const-string v0, "AudioRoute"

    const-string v1, "Monitor stopped"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(II)V
    .locals 4

    const/4 v1, 0x1

    const-string v0, "AudioRoute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StopState: onEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/a$g;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->h(Lio/agora/rtc/internal/a;)Landroid/media/AudioManager;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/a$c;->a(II)V

    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v1, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    iget-object v2, p0, Lio/agora/rtc/internal/a$g;->b:Lio/agora/rtc/internal/a;

    if-ne p2, v1, :cond_1

    const/4 v0, 0x3

    :goto_2
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->i(Lio/agora/rtc/internal/a;I)I

    iget-object v0, p0, Lio/agora/rtc/internal/a$g;->b:Lio/agora/rtc/internal/a;

    invoke-static {v0, p2}, Lio/agora/rtc/internal/a;->h(Lio/agora/rtc/internal/a;I)I

    iget-object v0, p0, Lio/agora/rtc/internal/a$g;->b:Lio/agora/rtc/internal/a;

    iget-object v1, p0, Lio/agora/rtc/internal/a$g;->b:Lio/agora/rtc/internal/a;

    invoke-static {v1}, Lio/agora/rtc/internal/a;->i(Lio/agora/rtc/internal/a;)I

    move-result v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/a;->j(Lio/agora/rtc/internal/a;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AudioRoute"

    const-string v2, "onEvent: Exception "

    invoke-static {v1, v2, v0}, Lio/agora/rtc/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
