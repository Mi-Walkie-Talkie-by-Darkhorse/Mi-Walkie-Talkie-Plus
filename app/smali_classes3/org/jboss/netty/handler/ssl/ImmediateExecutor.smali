.class public final Lorg/jboss/netty/handler/ssl/ImmediateExecutor;
.super Ljava/lang/Object;
.source "ImmediateExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    invoke-direct {v0}, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/ssl/ImmediateExecutor;->INSTANCE:Lorg/jboss/netty/handler/ssl/ImmediateExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
