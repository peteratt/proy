class Book2sController < ApplicationController
  # GET /book2s
  # GET /book2s.xml
  def index
    @book2s = Book2.find(:all, :order => :price)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @book2s }
    end
  end

  # GET /book2s/1
  # GET /book2s/1.xml
  def show
    @book2 = Book2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book2 }
    end
  end

  # GET /book2s/new
  # GET /book2s/new.xml
  def new
    @book2 = Book2.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book2 }
    end
  end

  # GET /book2s/1/edit
  def edit
    @book2 = Book2.find(params[:id])
  end

  # POST /book2s
  # POST /book2s.xml
  def create
    @book2 = Book2.new(params[:book2])

    respond_to do |format|
      if @book2.save
        format.html { redirect_to(@book2, :notice => 'Book2 was successfully created.') }
        format.xml  { render :xml => @book2, :status => :created, :location => @book2 }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @book2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /book2s/1
  # PUT /book2s/1.xml
  def update
    @book2 = Book2.find(params[:id])

    respond_to do |format|
      if @book2.update_attributes(params[:book2])
        format.html { redirect_to(@book2, :notice => 'Book2 was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book2.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /book2s/1
  # DELETE /book2s/1.xml
  def destroy
    @book2 = Book2.find(params[:id])
    @book2.destroy

    respond_to do |format|
      format.html { redirect_to(book2s_url) }
      format.xml  { head :ok }
    end
  end
end
