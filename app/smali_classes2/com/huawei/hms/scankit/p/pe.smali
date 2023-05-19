.class public final Lcom/huawei/hms/scankit/p/pe;
.super Ljava/lang/Object;
.source "QRCode.java"


# instance fields
.field private a:Lcom/huawei/hms/scankit/p/wc;

.field private b:Lcom/huawei/hms/scankit/p/qc;

.field private c:Lcom/huawei/hms/scankit/p/zc;

.field private d:I

.field private e:Lcom/huawei/hms/scankit/p/je;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/huawei/hms/scankit/p/pe;->d:I

    return-void
.end method

.method public static a(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/p/je;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/pe;->e:Lcom/huawei/hms/scankit/p/je;

    return-object v0
.end method

.method public a(Lcom/huawei/hms/scankit/p/je;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pe;->e:Lcom/huawei/hms/scankit/p/je;

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/qc;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pe;->b:Lcom/huawei/hms/scankit/p/qc;

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/wc;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pe;->a:Lcom/huawei/hms/scankit/p/wc;

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/zc;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/pe;->c:Lcom/huawei/hms/scankit/p/zc;

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/scankit/p/pe;->d:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<<\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pe;->a:Lcom/huawei/hms/scankit/p/wc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n ecLevel: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pe;->b:Lcom/huawei/hms/scankit/p/qc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n version: "

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/pe;->c:Lcom/huawei/hms/scankit/p/zc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n maskPattern: "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p0, Lcom/huawei/hms/scankit/p/pe;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">>\n"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
