.class public Lcom/ifengyu/intercom/greendao/bean/c;
.super Ljava/lang/Object;
.source "TrackPoint.java"


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/ifengyu/intercom/greendao/bean/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ifengyu/intercom/greendao/bean/c;->c:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/ifengyu/intercom/greendao/bean/c;->d:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/ifengyu/intercom/greendao/bean/c;->e:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/ifengyu/intercom/greendao/bean/c;->f:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/ifengyu/intercom/greendao/bean/c;->g:Ljava/lang/Integer;

    iput-boolean p8, p0, Lcom/ifengyu/intercom/greendao/bean/c;->h:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/bean/c;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->c:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->h:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/bean/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->d:Ljava/lang/Integer;

    return-void
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/bean/c;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public c(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->e:Ljava/lang/Integer;

    return-void
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/bean/c;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public d(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->f:Ljava/lang/Integer;

    return-void
.end method

.method public e()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/bean/c;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public e(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->g:Ljava/lang/Integer;

    return-void
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/bean/c;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/greendao/bean/c;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/greendao/bean/c;->h:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackPoint{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPausedPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ifengyu/intercom/greendao/bean/c;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
