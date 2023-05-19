.class Lcom/shanlitech/et/web/b/c/d$a;
.super Lb/c/a/c/c;
.source "HistoryAudioMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/web/b/c/d;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/shanlitech/et/web/b/c/d;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/web/b/c/d;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/web/b/c/d$a;->d:Lcom/shanlitech/et/web/b/c/d;

    iput-wide p4, p0, Lcom/shanlitech/et/web/b/c/d$a;->b:J

    iput p6, p0, Lcom/shanlitech/et/web/b/c/d$a;->c:I

    invoke-direct {p0, p2, p3}, Lb/c/a/c/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/lzy/okgo/model/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lb/c/a/c/a;->b(Lcom/lzy/okgo/model/a;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HistoryAudioMethod"

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/lzy/okgo/model/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/shanlitech/et/web/b/c/d$a;->d:Lcom/shanlitech/et/web/b/c/d;

    invoke-virtual {v1}, Lcom/shanlitech/et/web/b/c/d;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/c/l;->l(J)Lcom/shanlitech/et/model/Group;

    move-result-object v0

    const-string v1, "HistoryAudioMethod"

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0d\u5c5e\u4e8e\u8fd9\u4e2a\u7fa4\u7ec4\u4e86\uff0c\u4e0d\u64ad\u653e>>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shanlitech/et/web/b/c/d$a;->d:Lcom/shanlitech/et/web/b/c/d;

    invoke-virtual {v0}, Lcom/shanlitech/et/web/b/c/d;->getGid()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-boolean p1, Lcom/shanlitech/et/a;->a:Z

    if-eqz p1, :cond_3

    .line 4
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Account;->getGroupList()Lcom/shanlitech/et/model/GroupList;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shanlitech/et/c/h;->h(Ljava/lang/String;Lcom/shanlitech/et/model/GroupList;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/shanlitech/et/model/Group;->isCurrentGroup()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u975e\u5f53\u524d\u6240\u5728\u7ec4\uff0c\u4e0d\u64ad\u653e>>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shanlitech/et/web/b/c/d$a;->d:Lcom/shanlitech/et/web/b/c/d;

    invoke-virtual {v0}, Lcom/shanlitech/et/web/b/c/d;->getGid()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-boolean p1, Lcom/shanlitech/et/a;->a:Z

    if-eqz p1, :cond_3

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5f53\u524d\u6240\u5728\u7fa4\u7ec4\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/l;->i()Lcom/shanlitech/et/model/Group;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/core/c/n;->d()Lcom/shanlitech/et/core/c/n;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-wide v2, p0, Lcom/shanlitech/et/web/b/c/d$a;->b:J

    iget v4, p0, Lcom/shanlitech/et/web/b/c/d$a;->c:I

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/shanlitech/et/core/c/n;->f(Ljava/lang/String;JI)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u64ad\u653e\u6210\u529f"

    .line 10
    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "\u64ad\u653e\u5931\u8d25"

    .line 11
    invoke-static {v1, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
