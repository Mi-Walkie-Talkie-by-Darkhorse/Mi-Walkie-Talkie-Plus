.class public Lorg/greenrobot/greendao/d/c;
.super Lorg/greenrobot/greendao/d/a;
.source "RxTransaction.java"


# annotations
.annotation build Lorg/greenrobot/greendao/annotation/apihint/Experimental;
.end annotation


# instance fields
.field private final b:Lorg/greenrobot/greendao/c;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/greenrobot/greendao/d/a;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/greendao/d/c;->b:Lorg/greenrobot/greendao/c;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/c;Lrx/d;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/greenrobot/greendao/d/a;-><init>(Lrx/d;)V

    iput-object p1, p0, Lorg/greenrobot/greendao/d/c;->b:Lorg/greenrobot/greendao/c;

    return-void
.end method
