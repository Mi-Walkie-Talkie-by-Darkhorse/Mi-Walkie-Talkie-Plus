.class public final Lorg/jboss/netty/util/internal/StackTraceSimplifier;
.super Ljava/lang/Object;
.source "StackTraceSimplifier.java"


# static fields
.field private static final EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

.field private static final SIMPLIFY_STACK_TRACE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/jboss/netty/util/DebugUtil;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->SIMPLIFY_STACK_TRACE:Z

    const-string v0, "^org\\.jboss\\.netty\\.(util\\.(ThreadRenamingRunnable|internal\\.DeadLockProofWorker)|channel\\.(SimpleChannel(Upstream|Downstream)?Handler|(Default|Static)ChannelPipeline.*))(\\$.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static simplify(Ljava/lang/Throwable;)V
    .locals 5

    const/4 v3, 0x0

    sget-boolean v0, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->SIMPLIFY_STACK_TRACE:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->simplify(Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    aget-object v0, v1, v3

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_4

    sget-object v3, Lorg/jboss/netty/util/internal/StackTraceSimplifier;->EXCLUDED_STACK_TRACE:Ljava/util/regex/Pattern;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    goto :goto_0
.end method
