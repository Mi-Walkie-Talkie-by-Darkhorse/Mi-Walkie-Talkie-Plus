.class final Lcom/amap/api/col/l3/jy$a;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/jy;
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jy$a;->a:Z

    const-string v1, "0"

    .line 3
    iput-object v1, p0, Lcom/amap/api/col/l3/jy$a;->b:Ljava/lang/String;

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jy$a;->c:Z

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/amap/api/col/l3/jy$a;->d:I

    return-void
.end method
