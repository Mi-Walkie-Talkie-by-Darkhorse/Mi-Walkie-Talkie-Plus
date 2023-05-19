.class public final synthetic Lcom/ifengyu/talk/f/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ifengyu/talk/f/g;->a:J

    iput-wide p3, p0, Lcom/ifengyu/talk/f/g;->b:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-wide v0, p0, Lcom/ifengyu/talk/f/g;->a:J

    iget-wide v2, p0, Lcom/ifengyu/talk/f/g;->b:J

    check-cast p1, Lcom/ifengyu/talk/http/entity/SpeechMsg;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/ifengyu/talk/f/b0;->o(JJLcom/ifengyu/talk/http/entity/SpeechMsg;)V

    return-void
.end method
