.class Lorg/greenrobot/greendao/d/a;
.super Ljava/lang/Object;
.source "RxBase.java"


# annotations
.annotation build Lorg/greenrobot/greendao/annotation/apihint/Internal;
.end annotation


# instance fields
.field protected final a:Lrx/d;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/greendao/d/a;->a:Lrx/d;

    return-void
.end method

.method constructor <init>(Lrx/d;)V
    .locals 0
    .annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/d/a;->a:Lrx/d;

    return-void
.end method
