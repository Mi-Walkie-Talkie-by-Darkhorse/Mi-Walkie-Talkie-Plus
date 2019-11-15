.class public Lcom/ifengyu/intercom/network/d;
.super Ljava/lang/Object;
.source "UrlAdd.java"


# static fields
.field public static final a:Z

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/ifengyu/intercom/b/j;->a()Z

    move-result v0

    sput-boolean v0, Lcom/ifengyu/intercom/network/d;->a:Z

    invoke-static {}, Lcom/ifengyu/intercom/b/j;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/network/d;->b:Ljava/lang/String;

    sget-boolean v0, Lcom/ifengyu/intercom/network/d;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/network/d;->b:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/ifengyu/intercom/network/d;->c:Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/b/j;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/network/d;->d:Ljava/lang/String;

    sget-boolean v0, Lcom/ifengyu/intercom/network/d;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ifengyu/intercom/network/d;->d:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m/p/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/network/d;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/network/d;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/m/list/42?isShowComment=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/network/d;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/network/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/fymanage/api/splash/?is_publish=1&limit=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/network/d;->i:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "https://api.ifengyu.com"

    goto :goto_0

    :cond_1
    const-string v0, "https://cms.ifengyu.com"

    goto :goto_1
.end method
