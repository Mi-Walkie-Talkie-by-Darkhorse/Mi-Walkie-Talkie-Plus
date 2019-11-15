.class public Lcom/amap/api/mapcore/util/cy$a;
.super Ljava/lang/Object;
.source "CustomStyleRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field final synthetic c:Lcom/amap/api/mapcore/util/cy;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/cy;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/cy$a;->c:Lcom/amap/api/mapcore/util/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/cy$a;->b:I

    return-void
.end method
