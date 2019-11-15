.class Lcom/ifengyu/intercom/log/LogService$a;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/log/LogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/log/LogService;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/log/LogService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/log/LogService$a;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/log/LogService;Lcom/ifengyu/intercom/log/LogService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/log/LogService$a;-><init>(Lcom/ifengyu/intercom/log/LogService;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/io/File;)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/log/LogService$a;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/log/LogService;->c(Lcom/ifengyu/intercom/log/LogService;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/log/LogService$a;->a:Lcom/ifengyu/intercom/log/LogService;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/log/LogService;->c(Lcom/ifengyu/intercom/log/LogService;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/log/LogService$a;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
