.class final Lcom/amap/api/col/sl/fp$a;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/col/sl/fp$a;->a:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/amap/api/col/sl/fp$a;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/col/sl/fp$a;->c:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/amap/api/col/sl/fp$a;->d:I

    return-void
.end method
