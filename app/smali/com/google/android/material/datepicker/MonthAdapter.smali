.class Lcom/google/android/material/datepicker/MonthAdapter;
.super Landroid/widget/BaseAdapter;
.source "MonthAdapter.java"


# static fields
.field static final MAXIMUM_WEEKS:I


# instance fields
.field final calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

.field final dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field final month:Lcom/google/android/material/datepicker/Month;

.field private previouslySelectedDates:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/Month;",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    .line 4
    iput-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 5
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    return-void
.end method

.method private initializeStyles(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/CalendarStyle;

    invoke-direct {v0, p1}, Lcom/google/android/material/datepicker/CalendarStyle;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    :cond_0
    return-void
.end method

.method private isSelected(J)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/UtcDates;->canonicalYearMonthDay(J)J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private updateSelectedState(Landroid/widget/TextView;J)V
    .locals 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->isSelected(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarStyle;->selectedDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-nez v2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarStyle;->todayDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 9
    iget-object p2, p0, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    iget-object p2, p2, Lcom/google/android/material/datepicker/CalendarStyle;->invalidDay:Lcom/google/android/material/datepicker/CalendarItemStyle;

    .line 10
    :goto_0
    invoke-virtual {p2, p1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;)V

    return-void
.end method

.method private updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 2

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->create(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/material/datepicker/Month;->getDayOfMonth(J)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method dayToPosition(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method firstPositionInMonth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Long;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->positionToDay(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/MonthAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 5
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/MonthAdapter;->initializeStyles(Landroid/content/Context;)V

    .line 3
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 4
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 5
    sget v0, Lcom/google/android/material/R$layout;->mtrl_calendar_day:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result p2

    sub-int p2, p1, p2

    if-ltz p2, :cond_3

    .line 7
    iget-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v2, p3, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    if-lt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 8
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%d"

    invoke-static {p3, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p3, p2}, Lcom/google/android/material/datepicker/Month;->getDay(I)J

    move-result-wide p2

    .line 12
    iget-object v3, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v3, v3, Lcom/google/android/material/datepicker/Month;->year:I

    invoke-static {}, Lcom/google/android/material/datepicker/Month;->current()Lcom/google/android/material/datepicker/Month;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/datepicker/Month;->year:I

    if-ne v3, v4, :cond_2

    .line 13
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/DateStrings;->getMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/DateStrings;->getYearMonthDayOfWeekDay(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    const/16 p2, 0x8

    .line 17
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 19
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    .line 20
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedState(Landroid/widget/TextView;J)V

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isFirstInRow(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    rem-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isLastInRow(I)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInWeek:I

    rem-int/2addr p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method lastPositionInMonth()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->daysInMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method positionToDay(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->month:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->daysFromStartOfWeekToFirstOfMonth()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public updateSelectedStates(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->updateSelectedStateForDate(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {p1}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthAdapter;->previouslySelectedDates:Ljava/util/Collection;

    :cond_2
    return-void
.end method

.method withinMonth(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
