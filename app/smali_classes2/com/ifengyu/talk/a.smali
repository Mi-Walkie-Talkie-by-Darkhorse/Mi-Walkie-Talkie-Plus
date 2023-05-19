.class public final synthetic Lcom/ifengyu/talk/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/ifengyu/talk/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/talk/a;

    invoke-direct {v0}, Lcom/ifengyu/talk/a;-><init>()V

    sput-object v0, Lcom/ifengyu/talk/a;->a:Lcom/ifengyu/talk/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/shanlitech/et/model/Group;

    check-cast p2, Lcom/shanlitech/et/model/Group;

    invoke-static {p1, p2}, Lcom/ifengyu/talk/d;->t(Lcom/shanlitech/et/model/Group;Lcom/shanlitech/et/model/Group;)I

    move-result p1

    return p1
.end method
