PdfFiller::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'


  resources :autofiller
  resources :users do     
    get 'download_i_9_pdf'
    get 'download_form1_pdf'
    get 'download_form2_pdf'    
    collection do

    end
  end

end
