.class Lcom/ifengyu/intercom/service/logCollect/LogService$c;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/service/logCollect/LogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/service/logCollect/LogService;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/service/logCollect/LogService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/service/logCollect/LogService$c;->a:Lcom/ifengyu/intercom/service/logCollect/LogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/service/logCollect/LogService;Lcom/ifengyu/intercom/service/logCollect/LogService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/service/logCollect/LogService$c;-><init>(Lcom/ifengyu/intercom/service/logCollect/LogService;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/service/logCollect/LogService$c;->a:Lcom/ifengyu/intercom/service/logCollect/LogService;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/service/logCollect/LogService;->d(Lcom/ifengyu/intercom/service/logCollect/LogService;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/service/logCollect/LogService$c;->a:Lcom/ifengyu/intercom/service/logCollect/LogService;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/service/logCollect/LogService;->d(Lcom/ifengyu/intercom/service/logCollect/LogService;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/service/logCollect/LogService$c;->a(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
