.class public Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;
.super Lcom/ifengyu/intercom/ui/baseui/BaseActivity;
.source "GoogleMapDownloadDefinitionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/view/View;

.field private C:Ljava/lang/String;

.field private D:I

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:[Lorg/osmdroid/util/GeoPoint;

.field private u:[Landroid/widget/CheckBox;

.field private v:Lcom/ifengyu/intercom/greendao/dao/a$a;

.field private w:Lcom/ifengyu/intercom/greendao/dao/b;

.field private x:I

.field private y:[I

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/CheckBox;

    .line 2
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:[Landroid/widget/CheckBox;

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x:I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:[Ljava/lang/String;

    const/16 v0, 0x1e

    .line 6
    iput v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->D:I

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:Landroid/widget/EditText;

    return-object p0
.end method

.method private a(Landroid/widget/CheckBox;)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:[Landroid/widget/CheckBox;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->D:I

    return p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Lorg/osmdroid/util/GeoPoint;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    return-object p0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x:I

    return p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:[I

    return-object p0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->C:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->w:Lcom/ifengyu/intercom/greendao/dao/b;

    return-object p0
.end method

.method static synthetic j(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)Lcom/ifengyu/intercom/greendao/dao/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->v:Lcom/ifengyu/intercom/greendao/dao/a$a;

    return-object p0
.end method

.method private w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->r()V

    const v0, 0x7f09041d

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f090418

    .line 3
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->s:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->r:Landroid/widget/TextView;

    const v1, 0x7f1102bf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private x()V
    .locals 9

    const/16 v0, 0x12

    :goto_0
    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:[I

    aget v4, v1, v3

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    aget-object v6, v5, v3

    aget-object v2, v5, v2

    invoke-static {v6, v2, v0}, Lcom/ifengyu/intercom/ui/map/f/a/a;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v4, v2

    aput v4, v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_1
    if-lt v0, v1, :cond_1

    .line 2
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:[I

    aget v5, v4, v2

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    aget-object v7, v6, v3

    aget-object v6, v6, v2

    invoke-static {v7, v6, v0}, Lcom/ifengyu/intercom/ui/map/f/a/a;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x10

    :goto_2
    const/4 v4, 0x2

    if-lt v0, v1, :cond_2

    .line 3
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:[I

    aget v6, v5, v4

    iget-object v7, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    aget-object v8, v7, v3

    aget-object v7, v7, v2

    invoke-static {v8, v7, v0}, Lcom/ifengyu/intercom/ui/map/f/a/a;->a(Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;I)[Lcom/ifengyu/intercom/ui/map/TilePoint;

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:[Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v1

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:[I

    aget v5, v5, v3

    invoke-virtual {v1, v5}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:[Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v1

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:[Ljava/lang/String;

    invoke-static {}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->b()Lcom/ifengyu/intercom/ui/map/MapDataProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:[I

    aget v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/map/MapDataProvider;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    .line 3
    :sswitch_0
    invoke-static/range {p0 .. p0}, Lcom/ifengyu/intercom/i/c0;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f110248

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->C:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110276

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 8
    :cond_1
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    iget-object v6, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->C:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const v1, 0x7f110344

    .line 10
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 11
    :cond_3
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/ifengyu/intercom/i/c0;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f11032f

    .line 12
    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 13
    :cond_4
    new-instance v1, Lcom/ifengyu/intercom/greendao/dao/a$a;

    const/4 v5, 0x0

    const-string v6, "mitalki_db"

    invoke-direct {v1, v0, v6, v5}, Lcom/ifengyu/intercom/greendao/dao/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->v:Lcom/ifengyu/intercom/greendao/dao/a$a;

    .line 14
    new-instance v6, Lcom/ifengyu/intercom/greendao/dao/a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/ifengyu/intercom/greendao/dao/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    invoke-virtual {v6}, Lcom/ifengyu/intercom/greendao/dao/a;->newSession()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v1

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->w:Lcom/ifengyu/intercom/greendao/dao/b;

    .line 16
    invoke-static/range {p0 .. p0}, Lcom/ifengyu/intercom/i/c0;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    new-instance v1, Lcom/ifengyu/intercom/greendao/bean/a;

    const/4 v6, 0x0

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    iget-object v5, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-object v4, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget v4, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x:I

    if-nez v4, :cond_5

    const/16 v2, 0x12

    goto :goto_0

    :cond_5
    if-ne v4, v2, :cond_6

    const/16 v2, 0x10

    goto :goto_0

    :cond_6
    const/16 v2, 0x11

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->y:[I

    iget v4, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x:I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:[Ljava/lang/String;

    iget v4, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x:I

    aget-object v15, v2, v4

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->C:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object v5, v1

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v18}, Lcom/ifengyu/intercom/greendao/bean/a;-><init>(Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 18
    iget-object v2, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->w:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 19
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->w:Lcom/ifengyu/intercom/greendao/dao/b;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/greendao/dao/b;->a()V

    .line 20
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->v:Lcom/ifengyu/intercom/greendao/dao/a$a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 21
    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 23
    :cond_7
    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-direct {v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/f;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f1100fa

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(Ljava/lang/CharSequence;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v2, 0x7f110093

    .line 24
    invoke-virtual {v1, v2, v5}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    const v2, 0x7f110312

    new-instance v3, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;

    invoke-direct {v3, v0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$b;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/widget/dialog/f;

    .line 25
    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->a()Lcom/ifengyu/intercom/ui/widget/dialog/f;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/dialog/f;->d()V

    goto :goto_1

    .line 26
    :sswitch_1
    iput v3, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x:I

    .line 27
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:[Landroid/widget/CheckBox;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Landroid/widget/CheckBox;)V

    goto :goto_1

    .line 28
    :sswitch_2
    iput v2, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x:I

    .line 29
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:[Landroid/widget/CheckBox;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Landroid/widget/CheckBox;)V

    goto :goto_1

    .line 30
    :sswitch_3
    iput v4, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x:I

    .line 31
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:[Landroid/widget/CheckBox;

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->a(Landroid/widget/CheckBox;)V

    goto :goto_1

    .line 32
    :sswitch_4
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090108 -> :sswitch_4
        0x7f0901bf -> :sswitch_3
        0x7f0901c0 -> :sswitch_3
        0x7f09024a -> :sswitch_2
        0x7f09024b -> :sswitch_2
        0x7f09029d -> :sswitch_1
        0x7f09029e -> :sswitch_1
        0x7f090418 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0038

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->setContentView(I)V

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->w()V

    const p1, 0x7f0902f4

    .line 4
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:Landroid/widget/EditText;

    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:[Landroid/widget/CheckBox;

    const v0, 0x7f0901bf

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:[Landroid/widget/CheckBox;

    const v0, 0x7f09029d

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    aput-object v0, p1, v2

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:[Landroid/widget/CheckBox;

    const v0, 0x7f09024a

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v3, 0x2

    aput-object v0, p1, v3

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent_init_points"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "off_map_downloaded_names"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->A:Ljava/util/ArrayList;

    .line 11
    array-length v0, p1

    new-array v0, v0, [Lorg/osmdroid/util/GeoPoint;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->t:[Lorg/osmdroid/util/GeoPoint;

    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 13
    aget-object v5, p1, v0

    check-cast v5, Lorg/osmdroid/util/GeoPoint;

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->x()V

    const p1, 0x7f090108

    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:Landroid/view/View;

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->B:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->q:Landroid/widget/EditText;

    new-instance v0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$a;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f09024b

    .line 21
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09029e

    .line 22
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901c0

    .line 23
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->u:[Landroid/widget/CheckBox;

    array-length v0, p1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_3

    aget-object v5, p1, v4

    .line 25
    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const p1, 0x7f0901c1

    .line 26
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09029f

    .line 27
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09024c

    .line 28
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;->z:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected r()V
    .locals 2

    const v0, 0x7f090419

    .line 1
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c:Landroid/widget/ImageView;

    .line 2
    new-instance v1, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity$c;-><init>(Lcom/ifengyu/intercom/ui/map/GoogleMapDownloadDefinitionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
