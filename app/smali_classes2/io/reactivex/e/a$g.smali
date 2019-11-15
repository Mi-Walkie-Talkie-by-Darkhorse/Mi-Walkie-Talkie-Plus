.class final Lio/reactivex/e/a$g;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# static fields
.field static final a:Lio/reactivex/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/h;

    invoke-direct {v0}, Lio/reactivex/internal/schedulers/h;-><init>()V

    sput-object v0, Lio/reactivex/e/a$g;->a:Lio/reactivex/r;

    return-void
.end method
