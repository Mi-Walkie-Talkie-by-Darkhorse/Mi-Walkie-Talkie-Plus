.class public Lcom/huawei/hms/scankit/p/S$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public final synthetic e:Lcom/huawei/hms/scankit/p/S;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/S;)V
    .locals 2

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/S$a;->e:Lcom/huawei/hms/scankit/p/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/huawei/hms/scankit/p/S$a;->d:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S$a;->e:Lcom/huawei/hms/scankit/p/S;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/S;->a(Lcom/huawei/hms/scankit/p/S;)Lcom/huawei/hms/scankit/p/S$a;

    move-result-object v0

    iput-wide p1, v0, Lcom/huawei/hms/scankit/p/S$a;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S$a;->e:Lcom/huawei/hms/scankit/p/S;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/S;->a(Lcom/huawei/hms/scankit/p/S;)Lcom/huawei/hms/scankit/p/S$a;

    move-result-object v0

    iput-object p1, v0, Lcom/huawei/hms/scankit/p/S$a;->a:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S$a;->e:Lcom/huawei/hms/scankit/p/S;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/S;->a(Lcom/huawei/hms/scankit/p/S;)Lcom/huawei/hms/scankit/p/S$a;

    move-result-object v0

    iput-object p1, v0, Lcom/huawei/hms/scankit/p/S$a;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/scankit/p/S$a;->e:Lcom/huawei/hms/scankit/p/S;

    invoke-static {v0}, Lcom/huawei/hms/scankit/p/S;->a(Lcom/huawei/hms/scankit/p/S;)Lcom/huawei/hms/scankit/p/S$a;

    move-result-object v0

    iput-object p1, v0, Lcom/huawei/hms/scankit/p/S$a;->c:Ljava/lang/String;

    return-void
.end method
