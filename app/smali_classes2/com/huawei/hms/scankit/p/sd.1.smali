.class public final Lcom/huawei/hms/scankit/p/sd;
.super Ljava/lang/Object;
.source "AztecCode.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/huawei/hms/scankit/p/bb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/scankit/p/bb;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/sd;->e:Lcom/huawei/hms/scankit/p/bb;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/p/sd;->d:I

    return-void
.end method

.method public a(Lcom/huawei/hms/scankit/p/bb;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/sd;->e:Lcom/huawei/hms/scankit/p/bb;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/sd;->a:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/scankit/p/sd;->c:I

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/scankit/p/sd;->b:I

    return-void
.end method
