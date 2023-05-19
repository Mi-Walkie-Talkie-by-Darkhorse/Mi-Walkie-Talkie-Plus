.class Lcom/ifengyu/talk/f/e0$a;
.super Lcom/ifengyu/library/b/e/a;
.source "RecentTalkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/talk/f/e0;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/ifengyu/talk/f/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ifengyu/talk/f/e0;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLastMsgForEveryGroup fail"

    invoke-static {v0, v1}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    return-void
.end method
