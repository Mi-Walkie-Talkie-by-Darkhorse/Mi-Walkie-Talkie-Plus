.class public Lcom/huawei/hms/scankit/p/D;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/huawei/hms/scankit/p/C;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/lang/String;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/D;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/D;->f:Ljava/lang/String;

    new-instance v1, Lcom/huawei/hms/scankit/p/C;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/C;-><init>()V

    iput-object v1, p0, Lcom/huawei/hms/scankit/p/D;->g:Lcom/huawei/hms/scankit/p/C;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/D;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/D;->j:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/hms/scankit/p/D;->k:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/huawei/hms/scankit/p/D;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->m:Z

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/D;->q:J

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/scankit/p/D;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/D;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/D;->f:Ljava/lang/String;

    new-instance v1, Lcom/huawei/hms/scankit/p/C;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/C;-><init>()V

    iput-object v1, p0, Lcom/huawei/hms/scankit/p/D;->g:Lcom/huawei/hms/scankit/p/C;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/D;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/D;->j:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/huawei/hms/scankit/p/D;->k:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/huawei/hms/scankit/p/D;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->m:Z

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->o:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/D;->q:J

    iget-object v0, p1, Lcom/huawei/hms/scankit/p/D;->g:Lcom/huawei/hms/scankit/p/C;

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/D;->g:Lcom/huawei/hms/scankit/p/C;

    iget-boolean v0, p1, Lcom/huawei/hms/scankit/p/D;->a:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->b(Z)V

    iget-object v0, p1, Lcom/huawei/hms/scankit/p/D;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->a(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hms/scankit/p/D;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->b(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hms/scankit/p/D;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->c(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hms/scankit/p/D;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hms/scankit/p/D;->h:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->e(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/huawei/hms/scankit/p/D;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->f(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/huawei/hms/scankit/p/D;->b:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->a(Z)V

    iget v0, p1, Lcom/huawei/hms/scankit/p/D;->k:I

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->b(I)V

    iget v0, p1, Lcom/huawei/hms/scankit/p/D;->l:I

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->a(I)V

    iget-boolean v0, p1, Lcom/huawei/hms/scankit/p/D;->m:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->c(Z)V

    iget-boolean v0, p1, Lcom/huawei/hms/scankit/p/D;->n:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->d(Z)V

    iget-boolean v0, p1, Lcom/huawei/hms/scankit/p/D;->o:Z

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->e(Z)V

    iget-object v0, p1, Lcom/huawei/hms/scankit/p/D;->i:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->a(Ljava/util/Map;)V

    iget-object v0, p1, Lcom/huawei/hms/scankit/p/D;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/D;->g(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/huawei/hms/scankit/p/D;->q:J

    invoke-virtual {p0, v0, v1}, Lcom/huawei/hms/scankit/p/D;->a(J)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/D;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/p/D;->l:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/huawei/hms/scankit/p/D;->q:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/D;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/D;->i:Ljava/util/Map;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/D;->b:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/D;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/huawei/hms/scankit/p/D;->k:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/D;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/D;->a:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/D;->j:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/D;->e:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/D;->m:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/D;->f:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/D;->n:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->m:Z

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/D;->h:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/D;->o:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->n:Z

    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/D;->j:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->o:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/D;->p:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/D;->p:Ljava/lang/String;

    return-void
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/huawei/hms/scankit/p/D;->q:J

    return-wide v0
.end method

.method public i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/D;->i:Ljava/util/Map;

    return-object v0
.end method

.method public j()Lcom/huawei/hms/scankit/p/C;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/D;->g:Lcom/huawei/hms/scankit/p/C;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/D;->l:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/huawei/hms/scankit/p/D;->k:I

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->b:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/D;->a:Z

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/D;->c:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/D;->d:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/D;->e:Ljava/lang/String;

    return-object v0
.end method
