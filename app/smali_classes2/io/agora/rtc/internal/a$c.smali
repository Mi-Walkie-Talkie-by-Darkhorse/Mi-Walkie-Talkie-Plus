.class abstract Lio/agora/rtc/internal/a$c;
.super Ljava/lang/Object;
.source "AudioRoutingController.java"

# interfaces
.implements Lio/agora/rtc/internal/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/agora/rtc/internal/a;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/a;)V
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a$c;-><init>(Lio/agora/rtc/internal/a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lio/agora/rtc/internal/a$c;->a()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string v0, "AudioRoute"

    const-string v1, "setState: state not changed!"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    iget-object v1, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v1, p1}, Lio/agora/rtc/internal/a;->b(Lio/agora/rtc/internal/a;I)Lio/agora/rtc/internal/a$f;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/a;->a(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$f;)Lio/agora/rtc/internal/a$f;

    goto :goto_0
.end method

.method public a(II)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v2, p2}, Lio/agora/rtc/internal/a;->c(Lio/agora/rtc/internal/a;I)I

    iget-object v2, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    if-ltz p2, :cond_0

    :goto_1
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->a(Lio/agora/rtc/internal/a;Z)Z

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v0, p2}, Lio/agora/rtc/internal/a;->d(Lio/agora/rtc/internal/a;I)I

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    if-ne p2, v0, :cond_1

    :goto_2
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->b(Lio/agora/rtc/internal/a;Z)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :sswitch_3
    iget-object v2, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    if-lez p2, :cond_2

    :goto_3
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->c(Lio/agora/rtc/internal/a;Z)Z

    iget-object v0, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->e(Lio/agora/rtc/internal/a;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :sswitch_4
    iget-object v2, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    if-lez p2, :cond_3

    :goto_4
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->d(Lio/agora/rtc/internal/a;Z)Z

    iget-object v0, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->e(Lio/agora/rtc/internal/a;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_4

    :sswitch_5
    iget-object v2, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    if-lez p2, :cond_4

    :goto_5
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->e(Lio/agora/rtc/internal/a;Z)Z

    iget-object v0, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->e(Lio/agora/rtc/internal/a;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_5

    :sswitch_6
    iget-object v0, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v0, p2}, Lio/agora/rtc/internal/a;->e(Lio/agora/rtc/internal/a;I)I

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v1, p2}, Lio/agora/rtc/internal/a;->f(Lio/agora/rtc/internal/a;I)I

    iget-object v1, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v1, v0}, Lio/agora/rtc/internal/a;->f(Lio/agora/rtc/internal/a;Z)Z

    const-string v0, "AudioRoute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User set default routing to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    iget-object v3, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    invoke-static {v3}, Lio/agora/rtc/internal/a;->f(Lio/agora/rtc/internal/a;)I

    move-result v3

    invoke-static {v2, v3}, Lio/agora/rtc/internal/a;->g(Lio/agora/rtc/internal/a;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v2, p0, Lio/agora/rtc/internal/a$c;->a:Lio/agora/rtc/internal/a;

    if-lez p2, :cond_5

    :goto_6
    invoke-static {v2, v0}, Lio/agora/rtc/internal/a;->g(Lio/agora/rtc/internal/a;Z)Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0xa -> :sswitch_7
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_3
        0x14 -> :sswitch_1
        0x15 -> :sswitch_6
        0x16 -> :sswitch_8
    .end sparse-switch
.end method
