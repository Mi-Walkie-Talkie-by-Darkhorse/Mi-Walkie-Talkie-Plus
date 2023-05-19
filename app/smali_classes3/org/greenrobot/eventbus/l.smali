.class public final Lorg/greenrobot/eventbus/l;
.super Ljava/lang/Object;
.source "SubscriberExceptionEvent.java"


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/c;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lorg/greenrobot/eventbus/l;->a:Ljava/lang/Throwable;

    .line 3
    iput-object p3, p0, Lorg/greenrobot/eventbus/l;->b:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lorg/greenrobot/eventbus/l;->c:Ljava/lang/Object;

    return-void
.end method
