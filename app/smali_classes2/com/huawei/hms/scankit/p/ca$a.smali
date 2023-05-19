.class public Lcom/huawei/hms/scankit/p/ca$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/ca;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:J

.field public final synthetic d:Lcom/huawei/hms/scankit/p/ca;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/ca;J)V
    .locals 3

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/ca$a;->d:Lcom/huawei/hms/scankit/p/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ca$a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/ca$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ca$a;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/huawei/hms/scankit/p/ca$a;->c:J

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/huawei/hms/scankit/p/ca$a;->b:Z

    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p1, Lcom/huawei/hms/scankit/p/ca;->c:Z

    return-void
.end method

.method private a(JJ)Z
    .locals 1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p4

    if-ne p3, p4, :cond_1

    const/4 p3, 0x6

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p4

    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-eq p4, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method private b(J)V
    .locals 3

    const-string v0, "SessionWrapper"

    const-string v1, "getNewSession() session is flush!"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ca$a;->a:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ca$a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/ca$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ca$a;->a:Ljava/lang/String;

    iput-wide p1, p0, Lcom/huawei/hms/scankit/p/ca$a;->c:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/ca$a;->b:Z

    return-void
.end method

.method private b(JJ)Z
    .locals 1

    sub-long/2addr p3, p1

    iget-object p1, p0, Lcom/huawei/hms/scankit/p/ca$a;->d:Lcom/huawei/hms/scankit/p/ca;

    .line 1
    iget-wide p1, p1, Lcom/huawei/hms/scankit/p/ca;->a:J

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(J)V
    .locals 4

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ca$a;->d:Lcom/huawei/hms/scankit/p/ca;

    .line 1
    iget-boolean v0, v0, Lcom/huawei/hms/scankit/p/ca;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/ca$a;->d:Lcom/huawei/hms/scankit/p/ca;

    .line 3
    iput-boolean v1, v0, Lcom/huawei/hms/scankit/p/ca;->c:Z

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/ca$a;->b(J)V

    return-void

    :cond_0
    iget-wide v2, p0, Lcom/huawei/hms/scankit/p/ca$a;->c:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/huawei/hms/scankit/p/ca$a;->b(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, p0, Lcom/huawei/hms/scankit/p/ca$a;->c:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/huawei/hms/scankit/p/ca$a;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Lcom/huawei/hms/scankit/p/ca$a;->c:J

    iput-boolean v1, p0, Lcom/huawei/hms/scankit/p/ca$a;->b:Z

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/scankit/p/ca$a;->b(J)V

    return-void
.end method
