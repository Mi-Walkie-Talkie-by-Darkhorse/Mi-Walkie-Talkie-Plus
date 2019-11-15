.class public final Lde/greenrobot/event/i;
.super Ljava/lang/Object;
.source "SubscriberExceptionEvent.java"


# instance fields
.field public final a:Lde/greenrobot/event/c;

.field public final b:Ljava/lang/Throwable;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lde/greenrobot/event/c;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/greenrobot/event/i;->a:Lde/greenrobot/event/c;

    iput-object p2, p0, Lde/greenrobot/event/i;->b:Ljava/lang/Throwable;

    iput-object p3, p0, Lde/greenrobot/event/i;->c:Ljava/lang/Object;

    iput-object p4, p0, Lde/greenrobot/event/i;->d:Ljava/lang/Object;

    return-void
.end method
